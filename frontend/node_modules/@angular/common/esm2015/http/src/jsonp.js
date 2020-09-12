/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { DOCUMENT } from '@angular/common';
import { Inject, Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpErrorResponse, HttpEventType, HttpResponse } from './response';
// Every request made through JSONP needs a callback name that's unique across the
// whole page. Each request is assigned an id and the callback name is constructed
// from that. The next id to be assigned is tracked in a global variable here that
// is shared among all applications on the page.
let nextRequestId = 0;
// Error text given when a JSONP script is injected, but doesn't invoke the callback
// passed in its URL.
export const JSONP_ERR_NO_CALLBACK = 'JSONP injected script did not invoke callback.';
// Error text given when a request is passed to the JsonpClientBackend that doesn't
// have a request method JSONP.
export const JSONP_ERR_WRONG_METHOD = 'JSONP requests must use JSONP request method.';
export const JSONP_ERR_WRONG_RESPONSE_TYPE = 'JSONP requests must use Json response type.';
/**
 * DI token/abstract type representing a map of JSONP callbacks.
 *
 * In the browser, this should always be the `window` object.
 *
 *
 */
export class JsonpCallbackContext {
}
/**
 * Processes an `HttpRequest` with the JSONP method,
 * by performing JSONP style requests.
 * @see `HttpHandler`
 * @see `HttpXhrBackend`
 *
 * @publicApi
 */
export class JsonpClientBackend {
    constructor(callbackMap, document) {
        this.callbackMap = callbackMap;
        this.document = document;
    }
    /**
     * Get the name of the next callback method, by incrementing the global `nextRequestId`.
     */
    nextCallback() {
        return `ng_jsonp_callback_${nextRequestId++}`;
    }
    /**
     * Processes a JSONP request and returns an event stream of the results.
     * @param req The request object.
     * @returns An observable of the response events.
     *
     */
    handle(req) {
        // Firstly, check both the method and response type. If either doesn't match
        // then the request was improperly routed here and cannot be handled.
        if (req.method !== 'JSONP') {
            throw new Error(JSONP_ERR_WRONG_METHOD);
        }
        else if (req.responseType !== 'json') {
            throw new Error(JSONP_ERR_WRONG_RESPONSE_TYPE);
        }
        // Everything else happens inside the Observable boundary.
        return new Observable((observer) => {
            // The first step to make a request is to generate the callback name, and replace the
            // callback placeholder in the URL with the name. Care has to be taken here to ensure
            // a trailing &, if matched, gets inserted back into the URL in the correct place.
            const callback = this.nextCallback();
            const url = req.urlWithParams.replace(/=JSONP_CALLBACK(&|$)/, `=${callback}$1`);
            // Construct the <script> tag and point it at the URL.
            const node = this.document.createElement('script');
            node.src = url;
            // A JSONP request requires waiting for multiple callbacks. These variables
            // are closed over and track state across those callbacks.
            // The response object, if one has been received, or null otherwise.
            let body = null;
            // Whether the response callback has been called.
            let finished = false;
            // Whether the request has been cancelled (and thus any other callbacks)
            // should be ignored.
            let cancelled = false;
            // Set the response callback in this.callbackMap (which will be the window
            // object in the browser. The script being loaded via the <script> tag will
            // eventually call this callback.
            this.callbackMap[callback] = (data) => {
                // Data has been received from the JSONP script. Firstly, delete this callback.
                delete this.callbackMap[callback];
                // Next, make sure the request wasn't cancelled in the meantime.
                if (cancelled) {
                    return;
                }
                // Set state to indicate data was received.
                body = data;
                finished = true;
            };
            // cleanup() is a utility closure that removes the <script> from the page and
            // the response callback from the window. This logic is used in both the
            // success, error, and cancellation paths, so it's extracted out for convenience.
            const cleanup = () => {
                // Remove the <script> tag if it's still on the page.
                if (node.parentNode) {
                    node.parentNode.removeChild(node);
                }
                // Remove the response callback from the callbackMap (window object in the
                // browser).
                delete this.callbackMap[callback];
            };
            // onLoad() is the success callback which runs after the response callback
            // if the JSONP script loads successfully. The event itself is unimportant.
            // If something went wrong, onLoad() may run without the response callback
            // having been invoked.
            const onLoad = (event) => {
                // Do nothing if the request has been cancelled.
                if (cancelled) {
                    return;
                }
                // Cleanup the page.
                cleanup();
                // Check whether the response callback has run.
                if (!finished) {
                    // It hasn't, something went wrong with the request. Return an error via
                    // the Observable error path. All JSONP errors have status 0.
                    observer.error(new HttpErrorResponse({
                        url,
                        status: 0,
                        statusText: 'JSONP Error',
                        error: new Error(JSONP_ERR_NO_CALLBACK),
                    }));
                    return;
                }
                // Success. body either contains the response body or null if none was
                // returned.
                observer.next(new HttpResponse({
                    body,
                    status: 200,
                    statusText: 'OK',
                    url,
                }));
                // Complete the stream, the response is over.
                observer.complete();
            };
            // onError() is the error callback, which runs if the script returned generates
            // a Javascript error. It emits the error via the Observable error channel as
            // a HttpErrorResponse.
            const onError = (error) => {
                // If the request was already cancelled, no need to emit anything.
                if (cancelled) {
                    return;
                }
                cleanup();
                // Wrap the error in a HttpErrorResponse.
                observer.error(new HttpErrorResponse({
                    error,
                    status: 0,
                    statusText: 'JSONP Error',
                    url,
                }));
            };
            // Subscribe to both the success (load) and error events on the <script> tag,
            // and add it to the page.
            node.addEventListener('load', onLoad);
            node.addEventListener('error', onError);
            this.document.body.appendChild(node);
            // The request has now been successfully sent.
            observer.next({ type: HttpEventType.Sent });
            // Cancellation handler.
            return () => {
                // Track the cancellation so event listeners won't do anything even if already scheduled.
                cancelled = true;
                // Remove the event listeners so they won't run if the events later fire.
                node.removeEventListener('load', onLoad);
                node.removeEventListener('error', onError);
                // And finally, clean up the page.
                cleanup();
            };
        });
    }
}
JsonpClientBackend.decorators = [
    { type: Injectable }
];
JsonpClientBackend.ctorParameters = () => [
    { type: JsonpCallbackContext },
    { type: undefined, decorators: [{ type: Inject, args: [DOCUMENT,] }] }
];
/**
 * Identifies requests with the method JSONP and
 * shifts them to the `JsonpClientBackend`.
 *
 * @see `HttpInterceptor`
 *
 * @publicApi
 */
export class JsonpInterceptor {
    constructor(jsonp) {
        this.jsonp = jsonp;
    }
    /**
     * Identifies and handles a given JSONP request.
     * @param req The outgoing request object to handle.
     * @param next The next interceptor in the chain, or the backend
     * if no interceptors remain in the chain.
     * @returns An observable of the event stream.
     */
    intercept(req, next) {
        if (req.method === 'JSONP') {
            return this.jsonp.handle(req);
        }
        // Fall through for normal HTTP requests.
        return next.handle(req);
    }
}
JsonpInterceptor.decorators = [
    { type: Injectable }
];
JsonpInterceptor.ctorParameters = () => [
    { type: JsonpClientBackend }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoianNvbnAuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21tb24vaHR0cC9zcmMvanNvbnAudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxFQUFDLFFBQVEsRUFBQyxNQUFNLGlCQUFpQixDQUFDO0FBQ3pDLE9BQU8sRUFBQyxNQUFNLEVBQUUsVUFBVSxFQUFDLE1BQU0sZUFBZSxDQUFDO0FBQ2pELE9BQU8sRUFBQyxVQUFVLEVBQVcsTUFBTSxNQUFNLENBQUM7QUFJMUMsT0FBTyxFQUFDLGlCQUFpQixFQUFhLGFBQWEsRUFBRSxZQUFZLEVBQUMsTUFBTSxZQUFZLENBQUM7QUFFckYsa0ZBQWtGO0FBQ2xGLGtGQUFrRjtBQUNsRixrRkFBa0Y7QUFDbEYsZ0RBQWdEO0FBQ2hELElBQUksYUFBYSxHQUFXLENBQUMsQ0FBQztBQUU5QixvRkFBb0Y7QUFDcEYscUJBQXFCO0FBQ3JCLE1BQU0sQ0FBQyxNQUFNLHFCQUFxQixHQUFHLGdEQUFnRCxDQUFDO0FBRXRGLG1GQUFtRjtBQUNuRiwrQkFBK0I7QUFDL0IsTUFBTSxDQUFDLE1BQU0sc0JBQXNCLEdBQUcsK0NBQStDLENBQUM7QUFDdEYsTUFBTSxDQUFDLE1BQU0sNkJBQTZCLEdBQUcsNkNBQTZDLENBQUM7QUFFM0Y7Ozs7OztHQU1HO0FBQ0gsTUFBTSxPQUFnQixvQkFBb0I7Q0FFekM7QUFFRDs7Ozs7OztHQU9HO0FBRUgsTUFBTSxPQUFPLGtCQUFrQjtJQUM3QixZQUFvQixXQUFpQyxFQUE0QixRQUFhO1FBQTFFLGdCQUFXLEdBQVgsV0FBVyxDQUFzQjtRQUE0QixhQUFRLEdBQVIsUUFBUSxDQUFLO0lBQUcsQ0FBQztJQUVsRzs7T0FFRztJQUNLLFlBQVk7UUFDbEIsT0FBTyxxQkFBcUIsYUFBYSxFQUFFLEVBQUUsQ0FBQztJQUNoRCxDQUFDO0lBRUQ7Ozs7O09BS0c7SUFDSCxNQUFNLENBQUMsR0FBdUI7UUFDNUIsNEVBQTRFO1FBQzVFLHFFQUFxRTtRQUNyRSxJQUFJLEdBQUcsQ0FBQyxNQUFNLEtBQUssT0FBTyxFQUFFO1lBQzFCLE1BQU0sSUFBSSxLQUFLLENBQUMsc0JBQXNCLENBQUMsQ0FBQztTQUN6QzthQUFNLElBQUksR0FBRyxDQUFDLFlBQVksS0FBSyxNQUFNLEVBQUU7WUFDdEMsTUFBTSxJQUFJLEtBQUssQ0FBQyw2QkFBNkIsQ0FBQyxDQUFDO1NBQ2hEO1FBRUQsMERBQTBEO1FBQzFELE9BQU8sSUFBSSxVQUFVLENBQWlCLENBQUMsUUFBa0MsRUFBRSxFQUFFO1lBQzNFLHFGQUFxRjtZQUNyRixxRkFBcUY7WUFDckYsa0ZBQWtGO1lBQ2xGLE1BQU0sUUFBUSxHQUFHLElBQUksQ0FBQyxZQUFZLEVBQUUsQ0FBQztZQUNyQyxNQUFNLEdBQUcsR0FBRyxHQUFHLENBQUMsYUFBYSxDQUFDLE9BQU8sQ0FBQyxzQkFBc0IsRUFBRSxJQUFJLFFBQVEsSUFBSSxDQUFDLENBQUM7WUFFaEYsc0RBQXNEO1lBQ3RELE1BQU0sSUFBSSxHQUFHLElBQUksQ0FBQyxRQUFRLENBQUMsYUFBYSxDQUFDLFFBQVEsQ0FBQyxDQUFDO1lBQ25ELElBQUksQ0FBQyxHQUFHLEdBQUcsR0FBRyxDQUFDO1lBRWYsMkVBQTJFO1lBQzNFLDBEQUEwRDtZQUUxRCxvRUFBb0U7WUFDcEUsSUFBSSxJQUFJLEdBQWEsSUFBSSxDQUFDO1lBRTFCLGlEQUFpRDtZQUNqRCxJQUFJLFFBQVEsR0FBWSxLQUFLLENBQUM7WUFFOUIsd0VBQXdFO1lBQ3hFLHFCQUFxQjtZQUNyQixJQUFJLFNBQVMsR0FBWSxLQUFLLENBQUM7WUFFL0IsMEVBQTBFO1lBQzFFLDJFQUEyRTtZQUMzRSxpQ0FBaUM7WUFDakMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxRQUFRLENBQUMsR0FBRyxDQUFDLElBQVUsRUFBRSxFQUFFO2dCQUMxQywrRUFBK0U7Z0JBQy9FLE9BQU8sSUFBSSxDQUFDLFdBQVcsQ0FBQyxRQUFRLENBQUMsQ0FBQztnQkFFbEMsZ0VBQWdFO2dCQUNoRSxJQUFJLFNBQVMsRUFBRTtvQkFDYixPQUFPO2lCQUNSO2dCQUVELDJDQUEyQztnQkFDM0MsSUFBSSxHQUFHLElBQUksQ0FBQztnQkFDWixRQUFRLEdBQUcsSUFBSSxDQUFDO1lBQ2xCLENBQUMsQ0FBQztZQUVGLDZFQUE2RTtZQUM3RSx3RUFBd0U7WUFDeEUsaUZBQWlGO1lBQ2pGLE1BQU0sT0FBTyxHQUFHLEdBQUcsRUFBRTtnQkFDbkIscURBQXFEO2dCQUNyRCxJQUFJLElBQUksQ0FBQyxVQUFVLEVBQUU7b0JBQ25CLElBQUksQ0FBQyxVQUFVLENBQUMsV0FBVyxDQUFDLElBQUksQ0FBQyxDQUFDO2lCQUNuQztnQkFFRCwwRUFBMEU7Z0JBQzFFLFlBQVk7Z0JBQ1osT0FBTyxJQUFJLENBQUMsV0FBVyxDQUFDLFFBQVEsQ0FBQyxDQUFDO1lBQ3BDLENBQUMsQ0FBQztZQUVGLDBFQUEwRTtZQUMxRSwyRUFBMkU7WUFDM0UsMEVBQTBFO1lBQzFFLHVCQUF1QjtZQUN2QixNQUFNLE1BQU0sR0FBRyxDQUFDLEtBQVksRUFBRSxFQUFFO2dCQUM5QixnREFBZ0Q7Z0JBQ2hELElBQUksU0FBUyxFQUFFO29CQUNiLE9BQU87aUJBQ1I7Z0JBRUQsb0JBQW9CO2dCQUNwQixPQUFPLEVBQUUsQ0FBQztnQkFFViwrQ0FBK0M7Z0JBQy9DLElBQUksQ0FBQyxRQUFRLEVBQUU7b0JBQ2Isd0VBQXdFO29CQUN4RSw2REFBNkQ7b0JBQzdELFFBQVEsQ0FBQyxLQUFLLENBQUMsSUFBSSxpQkFBaUIsQ0FBQzt3QkFDbkMsR0FBRzt3QkFDSCxNQUFNLEVBQUUsQ0FBQzt3QkFDVCxVQUFVLEVBQUUsYUFBYTt3QkFDekIsS0FBSyxFQUFFLElBQUksS0FBSyxDQUFDLHFCQUFxQixDQUFDO3FCQUN4QyxDQUFDLENBQUMsQ0FBQztvQkFDSixPQUFPO2lCQUNSO2dCQUVELHNFQUFzRTtnQkFDdEUsWUFBWTtnQkFDWixRQUFRLENBQUMsSUFBSSxDQUFDLElBQUksWUFBWSxDQUFDO29CQUM3QixJQUFJO29CQUNKLE1BQU0sRUFBRSxHQUFHO29CQUNYLFVBQVUsRUFBRSxJQUFJO29CQUNoQixHQUFHO2lCQUNKLENBQUMsQ0FBQyxDQUFDO2dCQUVKLDZDQUE2QztnQkFDN0MsUUFBUSxDQUFDLFFBQVEsRUFBRSxDQUFDO1lBQ3RCLENBQUMsQ0FBQztZQUVGLCtFQUErRTtZQUMvRSw2RUFBNkU7WUFDN0UsdUJBQXVCO1lBQ3ZCLE1BQU0sT0FBTyxHQUFRLENBQUMsS0FBWSxFQUFFLEVBQUU7Z0JBQ3BDLGtFQUFrRTtnQkFDbEUsSUFBSSxTQUFTLEVBQUU7b0JBQ2IsT0FBTztpQkFDUjtnQkFDRCxPQUFPLEVBQUUsQ0FBQztnQkFFVix5Q0FBeUM7Z0JBQ3pDLFFBQVEsQ0FBQyxLQUFLLENBQUMsSUFBSSxpQkFBaUIsQ0FBQztvQkFDbkMsS0FBSztvQkFDTCxNQUFNLEVBQUUsQ0FBQztvQkFDVCxVQUFVLEVBQUUsYUFBYTtvQkFDekIsR0FBRztpQkFDSixDQUFDLENBQUMsQ0FBQztZQUNOLENBQUMsQ0FBQztZQUVGLDZFQUE2RTtZQUM3RSwwQkFBMEI7WUFDMUIsSUFBSSxDQUFDLGdCQUFnQixDQUFDLE1BQU0sRUFBRSxNQUFNLENBQUMsQ0FBQztZQUN0QyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsT0FBTyxFQUFFLE9BQU8sQ0FBQyxDQUFDO1lBQ3hDLElBQUksQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxJQUFJLENBQUMsQ0FBQztZQUVyQyw4Q0FBOEM7WUFDOUMsUUFBUSxDQUFDLElBQUksQ0FBQyxFQUFDLElBQUksRUFBRSxhQUFhLENBQUMsSUFBSSxFQUFDLENBQUMsQ0FBQztZQUUxQyx3QkFBd0I7WUFDeEIsT0FBTyxHQUFHLEVBQUU7Z0JBQ1YseUZBQXlGO2dCQUN6RixTQUFTLEdBQUcsSUFBSSxDQUFDO2dCQUVqQix5RUFBeUU7Z0JBQ3pFLElBQUksQ0FBQyxtQkFBbUIsQ0FBQyxNQUFNLEVBQUUsTUFBTSxDQUFDLENBQUM7Z0JBQ3pDLElBQUksQ0FBQyxtQkFBbUIsQ0FBQyxPQUFPLEVBQUUsT0FBTyxDQUFDLENBQUM7Z0JBRTNDLGtDQUFrQztnQkFDbEMsT0FBTyxFQUFFLENBQUM7WUFDWixDQUFDLENBQUM7UUFDSixDQUFDLENBQUMsQ0FBQztJQUNMLENBQUM7OztZQWxLRixVQUFVOzs7WUFFd0Isb0JBQW9COzRDQUFHLE1BQU0sU0FBQyxRQUFROztBQW1LekU7Ozs7Ozs7R0FPRztBQUVILE1BQU0sT0FBTyxnQkFBZ0I7SUFDM0IsWUFBb0IsS0FBeUI7UUFBekIsVUFBSyxHQUFMLEtBQUssQ0FBb0I7SUFBRyxDQUFDO0lBRWpEOzs7Ozs7T0FNRztJQUNILFNBQVMsQ0FBQyxHQUFxQixFQUFFLElBQWlCO1FBQ2hELElBQUksR0FBRyxDQUFDLE1BQU0sS0FBSyxPQUFPLEVBQUU7WUFDMUIsT0FBTyxJQUFJLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxHQUF5QixDQUFDLENBQUM7U0FDckQ7UUFDRCx5Q0FBeUM7UUFDekMsT0FBTyxJQUFJLENBQUMsTUFBTSxDQUFDLEdBQUcsQ0FBQyxDQUFDO0lBQzFCLENBQUM7OztZQWpCRixVQUFVOzs7WUFFa0Isa0JBQWtCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7RE9DVU1FTlR9IGZyb20gJ0Bhbmd1bGFyL2NvbW1vbic7XG5pbXBvcnQge0luamVjdCwgSW5qZWN0YWJsZX0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge09ic2VydmFibGUsIE9ic2VydmVyfSBmcm9tICdyeGpzJztcblxuaW1wb3J0IHtIdHRwQmFja2VuZCwgSHR0cEhhbmRsZXJ9IGZyb20gJy4vYmFja2VuZCc7XG5pbXBvcnQge0h0dHBSZXF1ZXN0fSBmcm9tICcuL3JlcXVlc3QnO1xuaW1wb3J0IHtIdHRwRXJyb3JSZXNwb25zZSwgSHR0cEV2ZW50LCBIdHRwRXZlbnRUeXBlLCBIdHRwUmVzcG9uc2V9IGZyb20gJy4vcmVzcG9uc2UnO1xuXG4vLyBFdmVyeSByZXF1ZXN0IG1hZGUgdGhyb3VnaCBKU09OUCBuZWVkcyBhIGNhbGxiYWNrIG5hbWUgdGhhdCdzIHVuaXF1ZSBhY3Jvc3MgdGhlXG4vLyB3aG9sZSBwYWdlLiBFYWNoIHJlcXVlc3QgaXMgYXNzaWduZWQgYW4gaWQgYW5kIHRoZSBjYWxsYmFjayBuYW1lIGlzIGNvbnN0cnVjdGVkXG4vLyBmcm9tIHRoYXQuIFRoZSBuZXh0IGlkIHRvIGJlIGFzc2lnbmVkIGlzIHRyYWNrZWQgaW4gYSBnbG9iYWwgdmFyaWFibGUgaGVyZSB0aGF0XG4vLyBpcyBzaGFyZWQgYW1vbmcgYWxsIGFwcGxpY2F0aW9ucyBvbiB0aGUgcGFnZS5cbmxldCBuZXh0UmVxdWVzdElkOiBudW1iZXIgPSAwO1xuXG4vLyBFcnJvciB0ZXh0IGdpdmVuIHdoZW4gYSBKU09OUCBzY3JpcHQgaXMgaW5qZWN0ZWQsIGJ1dCBkb2Vzbid0IGludm9rZSB0aGUgY2FsbGJhY2tcbi8vIHBhc3NlZCBpbiBpdHMgVVJMLlxuZXhwb3J0IGNvbnN0IEpTT05QX0VSUl9OT19DQUxMQkFDSyA9ICdKU09OUCBpbmplY3RlZCBzY3JpcHQgZGlkIG5vdCBpbnZva2UgY2FsbGJhY2suJztcblxuLy8gRXJyb3IgdGV4dCBnaXZlbiB3aGVuIGEgcmVxdWVzdCBpcyBwYXNzZWQgdG8gdGhlIEpzb25wQ2xpZW50QmFja2VuZCB0aGF0IGRvZXNuJ3Rcbi8vIGhhdmUgYSByZXF1ZXN0IG1ldGhvZCBKU09OUC5cbmV4cG9ydCBjb25zdCBKU09OUF9FUlJfV1JPTkdfTUVUSE9EID0gJ0pTT05QIHJlcXVlc3RzIG11c3QgdXNlIEpTT05QIHJlcXVlc3QgbWV0aG9kLic7XG5leHBvcnQgY29uc3QgSlNPTlBfRVJSX1dST05HX1JFU1BPTlNFX1RZUEUgPSAnSlNPTlAgcmVxdWVzdHMgbXVzdCB1c2UgSnNvbiByZXNwb25zZSB0eXBlLic7XG5cbi8qKlxuICogREkgdG9rZW4vYWJzdHJhY3QgdHlwZSByZXByZXNlbnRpbmcgYSBtYXAgb2YgSlNPTlAgY2FsbGJhY2tzLlxuICpcbiAqIEluIHRoZSBicm93c2VyLCB0aGlzIHNob3VsZCBhbHdheXMgYmUgdGhlIGB3aW5kb3dgIG9iamVjdC5cbiAqXG4gKlxuICovXG5leHBvcnQgYWJzdHJhY3QgY2xhc3MgSnNvbnBDYWxsYmFja0NvbnRleHQge1xuICBba2V5OiBzdHJpbmddOiAoZGF0YTogYW55KSA9PiB2b2lkO1xufVxuXG4vKipcbiAqIFByb2Nlc3NlcyBhbiBgSHR0cFJlcXVlc3RgIHdpdGggdGhlIEpTT05QIG1ldGhvZCxcbiAqIGJ5IHBlcmZvcm1pbmcgSlNPTlAgc3R5bGUgcmVxdWVzdHMuXG4gKiBAc2VlIGBIdHRwSGFuZGxlcmBcbiAqIEBzZWUgYEh0dHBYaHJCYWNrZW5kYFxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuQEluamVjdGFibGUoKVxuZXhwb3J0IGNsYXNzIEpzb25wQ2xpZW50QmFja2VuZCBpbXBsZW1lbnRzIEh0dHBCYWNrZW5kIHtcbiAgY29uc3RydWN0b3IocHJpdmF0ZSBjYWxsYmFja01hcDogSnNvbnBDYWxsYmFja0NvbnRleHQsIEBJbmplY3QoRE9DVU1FTlQpIHByaXZhdGUgZG9jdW1lbnQ6IGFueSkge31cblxuICAvKipcbiAgICogR2V0IHRoZSBuYW1lIG9mIHRoZSBuZXh0IGNhbGxiYWNrIG1ldGhvZCwgYnkgaW5jcmVtZW50aW5nIHRoZSBnbG9iYWwgYG5leHRSZXF1ZXN0SWRgLlxuICAgKi9cbiAgcHJpdmF0ZSBuZXh0Q2FsbGJhY2soKTogc3RyaW5nIHtcbiAgICByZXR1cm4gYG5nX2pzb25wX2NhbGxiYWNrXyR7bmV4dFJlcXVlc3RJZCsrfWA7XG4gIH1cblxuICAvKipcbiAgICogUHJvY2Vzc2VzIGEgSlNPTlAgcmVxdWVzdCBhbmQgcmV0dXJucyBhbiBldmVudCBzdHJlYW0gb2YgdGhlIHJlc3VsdHMuXG4gICAqIEBwYXJhbSByZXEgVGhlIHJlcXVlc3Qgb2JqZWN0LlxuICAgKiBAcmV0dXJucyBBbiBvYnNlcnZhYmxlIG9mIHRoZSByZXNwb25zZSBldmVudHMuXG4gICAqXG4gICAqL1xuICBoYW5kbGUocmVxOiBIdHRwUmVxdWVzdDxuZXZlcj4pOiBPYnNlcnZhYmxlPEh0dHBFdmVudDxhbnk+PiB7XG4gICAgLy8gRmlyc3RseSwgY2hlY2sgYm90aCB0aGUgbWV0aG9kIGFuZCByZXNwb25zZSB0eXBlLiBJZiBlaXRoZXIgZG9lc24ndCBtYXRjaFxuICAgIC8vIHRoZW4gdGhlIHJlcXVlc3Qgd2FzIGltcHJvcGVybHkgcm91dGVkIGhlcmUgYW5kIGNhbm5vdCBiZSBoYW5kbGVkLlxuICAgIGlmIChyZXEubWV0aG9kICE9PSAnSlNPTlAnKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoSlNPTlBfRVJSX1dST05HX01FVEhPRCk7XG4gICAgfSBlbHNlIGlmIChyZXEucmVzcG9uc2VUeXBlICE9PSAnanNvbicpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcihKU09OUF9FUlJfV1JPTkdfUkVTUE9OU0VfVFlQRSk7XG4gICAgfVxuXG4gICAgLy8gRXZlcnl0aGluZyBlbHNlIGhhcHBlbnMgaW5zaWRlIHRoZSBPYnNlcnZhYmxlIGJvdW5kYXJ5LlxuICAgIHJldHVybiBuZXcgT2JzZXJ2YWJsZTxIdHRwRXZlbnQ8YW55Pj4oKG9ic2VydmVyOiBPYnNlcnZlcjxIdHRwRXZlbnQ8YW55Pj4pID0+IHtcbiAgICAgIC8vIFRoZSBmaXJzdCBzdGVwIHRvIG1ha2UgYSByZXF1ZXN0IGlzIHRvIGdlbmVyYXRlIHRoZSBjYWxsYmFjayBuYW1lLCBhbmQgcmVwbGFjZSB0aGVcbiAgICAgIC8vIGNhbGxiYWNrIHBsYWNlaG9sZGVyIGluIHRoZSBVUkwgd2l0aCB0aGUgbmFtZS4gQ2FyZSBoYXMgdG8gYmUgdGFrZW4gaGVyZSB0byBlbnN1cmVcbiAgICAgIC8vIGEgdHJhaWxpbmcgJiwgaWYgbWF0Y2hlZCwgZ2V0cyBpbnNlcnRlZCBiYWNrIGludG8gdGhlIFVSTCBpbiB0aGUgY29ycmVjdCBwbGFjZS5cbiAgICAgIGNvbnN0IGNhbGxiYWNrID0gdGhpcy5uZXh0Q2FsbGJhY2soKTtcbiAgICAgIGNvbnN0IHVybCA9IHJlcS51cmxXaXRoUGFyYW1zLnJlcGxhY2UoLz1KU09OUF9DQUxMQkFDSygmfCQpLywgYD0ke2NhbGxiYWNrfSQxYCk7XG5cbiAgICAgIC8vIENvbnN0cnVjdCB0aGUgPHNjcmlwdD4gdGFnIGFuZCBwb2ludCBpdCBhdCB0aGUgVVJMLlxuICAgICAgY29uc3Qgbm9kZSA9IHRoaXMuZG9jdW1lbnQuY3JlYXRlRWxlbWVudCgnc2NyaXB0Jyk7XG4gICAgICBub2RlLnNyYyA9IHVybDtcblxuICAgICAgLy8gQSBKU09OUCByZXF1ZXN0IHJlcXVpcmVzIHdhaXRpbmcgZm9yIG11bHRpcGxlIGNhbGxiYWNrcy4gVGhlc2UgdmFyaWFibGVzXG4gICAgICAvLyBhcmUgY2xvc2VkIG92ZXIgYW5kIHRyYWNrIHN0YXRlIGFjcm9zcyB0aG9zZSBjYWxsYmFja3MuXG5cbiAgICAgIC8vIFRoZSByZXNwb25zZSBvYmplY3QsIGlmIG9uZSBoYXMgYmVlbiByZWNlaXZlZCwgb3IgbnVsbCBvdGhlcndpc2UuXG4gICAgICBsZXQgYm9keTogYW55fG51bGwgPSBudWxsO1xuXG4gICAgICAvLyBXaGV0aGVyIHRoZSByZXNwb25zZSBjYWxsYmFjayBoYXMgYmVlbiBjYWxsZWQuXG4gICAgICBsZXQgZmluaXNoZWQ6IGJvb2xlYW4gPSBmYWxzZTtcblxuICAgICAgLy8gV2hldGhlciB0aGUgcmVxdWVzdCBoYXMgYmVlbiBjYW5jZWxsZWQgKGFuZCB0aHVzIGFueSBvdGhlciBjYWxsYmFja3MpXG4gICAgICAvLyBzaG91bGQgYmUgaWdub3JlZC5cbiAgICAgIGxldCBjYW5jZWxsZWQ6IGJvb2xlYW4gPSBmYWxzZTtcblxuICAgICAgLy8gU2V0IHRoZSByZXNwb25zZSBjYWxsYmFjayBpbiB0aGlzLmNhbGxiYWNrTWFwICh3aGljaCB3aWxsIGJlIHRoZSB3aW5kb3dcbiAgICAgIC8vIG9iamVjdCBpbiB0aGUgYnJvd3Nlci4gVGhlIHNjcmlwdCBiZWluZyBsb2FkZWQgdmlhIHRoZSA8c2NyaXB0PiB0YWcgd2lsbFxuICAgICAgLy8gZXZlbnR1YWxseSBjYWxsIHRoaXMgY2FsbGJhY2suXG4gICAgICB0aGlzLmNhbGxiYWNrTWFwW2NhbGxiYWNrXSA9IChkYXRhPzogYW55KSA9PiB7XG4gICAgICAgIC8vIERhdGEgaGFzIGJlZW4gcmVjZWl2ZWQgZnJvbSB0aGUgSlNPTlAgc2NyaXB0LiBGaXJzdGx5LCBkZWxldGUgdGhpcyBjYWxsYmFjay5cbiAgICAgICAgZGVsZXRlIHRoaXMuY2FsbGJhY2tNYXBbY2FsbGJhY2tdO1xuXG4gICAgICAgIC8vIE5leHQsIG1ha2Ugc3VyZSB0aGUgcmVxdWVzdCB3YXNuJ3QgY2FuY2VsbGVkIGluIHRoZSBtZWFudGltZS5cbiAgICAgICAgaWYgKGNhbmNlbGxlZCkge1xuICAgICAgICAgIHJldHVybjtcbiAgICAgICAgfVxuXG4gICAgICAgIC8vIFNldCBzdGF0ZSB0byBpbmRpY2F0ZSBkYXRhIHdhcyByZWNlaXZlZC5cbiAgICAgICAgYm9keSA9IGRhdGE7XG4gICAgICAgIGZpbmlzaGVkID0gdHJ1ZTtcbiAgICAgIH07XG5cbiAgICAgIC8vIGNsZWFudXAoKSBpcyBhIHV0aWxpdHkgY2xvc3VyZSB0aGF0IHJlbW92ZXMgdGhlIDxzY3JpcHQ+IGZyb20gdGhlIHBhZ2UgYW5kXG4gICAgICAvLyB0aGUgcmVzcG9uc2UgY2FsbGJhY2sgZnJvbSB0aGUgd2luZG93LiBUaGlzIGxvZ2ljIGlzIHVzZWQgaW4gYm90aCB0aGVcbiAgICAgIC8vIHN1Y2Nlc3MsIGVycm9yLCBhbmQgY2FuY2VsbGF0aW9uIHBhdGhzLCBzbyBpdCdzIGV4dHJhY3RlZCBvdXQgZm9yIGNvbnZlbmllbmNlLlxuICAgICAgY29uc3QgY2xlYW51cCA9ICgpID0+IHtcbiAgICAgICAgLy8gUmVtb3ZlIHRoZSA8c2NyaXB0PiB0YWcgaWYgaXQncyBzdGlsbCBvbiB0aGUgcGFnZS5cbiAgICAgICAgaWYgKG5vZGUucGFyZW50Tm9kZSkge1xuICAgICAgICAgIG5vZGUucGFyZW50Tm9kZS5yZW1vdmVDaGlsZChub2RlKTtcbiAgICAgICAgfVxuXG4gICAgICAgIC8vIFJlbW92ZSB0aGUgcmVzcG9uc2UgY2FsbGJhY2sgZnJvbSB0aGUgY2FsbGJhY2tNYXAgKHdpbmRvdyBvYmplY3QgaW4gdGhlXG4gICAgICAgIC8vIGJyb3dzZXIpLlxuICAgICAgICBkZWxldGUgdGhpcy5jYWxsYmFja01hcFtjYWxsYmFja107XG4gICAgICB9O1xuXG4gICAgICAvLyBvbkxvYWQoKSBpcyB0aGUgc3VjY2VzcyBjYWxsYmFjayB3aGljaCBydW5zIGFmdGVyIHRoZSByZXNwb25zZSBjYWxsYmFja1xuICAgICAgLy8gaWYgdGhlIEpTT05QIHNjcmlwdCBsb2FkcyBzdWNjZXNzZnVsbHkuIFRoZSBldmVudCBpdHNlbGYgaXMgdW5pbXBvcnRhbnQuXG4gICAgICAvLyBJZiBzb21ldGhpbmcgd2VudCB3cm9uZywgb25Mb2FkKCkgbWF5IHJ1biB3aXRob3V0IHRoZSByZXNwb25zZSBjYWxsYmFja1xuICAgICAgLy8gaGF2aW5nIGJlZW4gaW52b2tlZC5cbiAgICAgIGNvbnN0IG9uTG9hZCA9IChldmVudDogRXZlbnQpID0+IHtcbiAgICAgICAgLy8gRG8gbm90aGluZyBpZiB0aGUgcmVxdWVzdCBoYXMgYmVlbiBjYW5jZWxsZWQuXG4gICAgICAgIGlmIChjYW5jZWxsZWQpIHtcbiAgICAgICAgICByZXR1cm47XG4gICAgICAgIH1cblxuICAgICAgICAvLyBDbGVhbnVwIHRoZSBwYWdlLlxuICAgICAgICBjbGVhbnVwKCk7XG5cbiAgICAgICAgLy8gQ2hlY2sgd2hldGhlciB0aGUgcmVzcG9uc2UgY2FsbGJhY2sgaGFzIHJ1bi5cbiAgICAgICAgaWYgKCFmaW5pc2hlZCkge1xuICAgICAgICAgIC8vIEl0IGhhc24ndCwgc29tZXRoaW5nIHdlbnQgd3Jvbmcgd2l0aCB0aGUgcmVxdWVzdC4gUmV0dXJuIGFuIGVycm9yIHZpYVxuICAgICAgICAgIC8vIHRoZSBPYnNlcnZhYmxlIGVycm9yIHBhdGguIEFsbCBKU09OUCBlcnJvcnMgaGF2ZSBzdGF0dXMgMC5cbiAgICAgICAgICBvYnNlcnZlci5lcnJvcihuZXcgSHR0cEVycm9yUmVzcG9uc2Uoe1xuICAgICAgICAgICAgdXJsLFxuICAgICAgICAgICAgc3RhdHVzOiAwLFxuICAgICAgICAgICAgc3RhdHVzVGV4dDogJ0pTT05QIEVycm9yJyxcbiAgICAgICAgICAgIGVycm9yOiBuZXcgRXJyb3IoSlNPTlBfRVJSX05PX0NBTExCQUNLKSxcbiAgICAgICAgICB9KSk7XG4gICAgICAgICAgcmV0dXJuO1xuICAgICAgICB9XG5cbiAgICAgICAgLy8gU3VjY2Vzcy4gYm9keSBlaXRoZXIgY29udGFpbnMgdGhlIHJlc3BvbnNlIGJvZHkgb3IgbnVsbCBpZiBub25lIHdhc1xuICAgICAgICAvLyByZXR1cm5lZC5cbiAgICAgICAgb2JzZXJ2ZXIubmV4dChuZXcgSHR0cFJlc3BvbnNlKHtcbiAgICAgICAgICBib2R5LFxuICAgICAgICAgIHN0YXR1czogMjAwLFxuICAgICAgICAgIHN0YXR1c1RleHQ6ICdPSycsXG4gICAgICAgICAgdXJsLFxuICAgICAgICB9KSk7XG5cbiAgICAgICAgLy8gQ29tcGxldGUgdGhlIHN0cmVhbSwgdGhlIHJlc3BvbnNlIGlzIG92ZXIuXG4gICAgICAgIG9ic2VydmVyLmNvbXBsZXRlKCk7XG4gICAgICB9O1xuXG4gICAgICAvLyBvbkVycm9yKCkgaXMgdGhlIGVycm9yIGNhbGxiYWNrLCB3aGljaCBydW5zIGlmIHRoZSBzY3JpcHQgcmV0dXJuZWQgZ2VuZXJhdGVzXG4gICAgICAvLyBhIEphdmFzY3JpcHQgZXJyb3IuIEl0IGVtaXRzIHRoZSBlcnJvciB2aWEgdGhlIE9ic2VydmFibGUgZXJyb3IgY2hhbm5lbCBhc1xuICAgICAgLy8gYSBIdHRwRXJyb3JSZXNwb25zZS5cbiAgICAgIGNvbnN0IG9uRXJyb3I6IGFueSA9IChlcnJvcjogRXJyb3IpID0+IHtcbiAgICAgICAgLy8gSWYgdGhlIHJlcXVlc3Qgd2FzIGFscmVhZHkgY2FuY2VsbGVkLCBubyBuZWVkIHRvIGVtaXQgYW55dGhpbmcuXG4gICAgICAgIGlmIChjYW5jZWxsZWQpIHtcbiAgICAgICAgICByZXR1cm47XG4gICAgICAgIH1cbiAgICAgICAgY2xlYW51cCgpO1xuXG4gICAgICAgIC8vIFdyYXAgdGhlIGVycm9yIGluIGEgSHR0cEVycm9yUmVzcG9uc2UuXG4gICAgICAgIG9ic2VydmVyLmVycm9yKG5ldyBIdHRwRXJyb3JSZXNwb25zZSh7XG4gICAgICAgICAgZXJyb3IsXG4gICAgICAgICAgc3RhdHVzOiAwLFxuICAgICAgICAgIHN0YXR1c1RleHQ6ICdKU09OUCBFcnJvcicsXG4gICAgICAgICAgdXJsLFxuICAgICAgICB9KSk7XG4gICAgICB9O1xuXG4gICAgICAvLyBTdWJzY3JpYmUgdG8gYm90aCB0aGUgc3VjY2VzcyAobG9hZCkgYW5kIGVycm9yIGV2ZW50cyBvbiB0aGUgPHNjcmlwdD4gdGFnLFxuICAgICAgLy8gYW5kIGFkZCBpdCB0byB0aGUgcGFnZS5cbiAgICAgIG5vZGUuYWRkRXZlbnRMaXN0ZW5lcignbG9hZCcsIG9uTG9hZCk7XG4gICAgICBub2RlLmFkZEV2ZW50TGlzdGVuZXIoJ2Vycm9yJywgb25FcnJvcik7XG4gICAgICB0aGlzLmRvY3VtZW50LmJvZHkuYXBwZW5kQ2hpbGQobm9kZSk7XG5cbiAgICAgIC8vIFRoZSByZXF1ZXN0IGhhcyBub3cgYmVlbiBzdWNjZXNzZnVsbHkgc2VudC5cbiAgICAgIG9ic2VydmVyLm5leHQoe3R5cGU6IEh0dHBFdmVudFR5cGUuU2VudH0pO1xuXG4gICAgICAvLyBDYW5jZWxsYXRpb24gaGFuZGxlci5cbiAgICAgIHJldHVybiAoKSA9PiB7XG4gICAgICAgIC8vIFRyYWNrIHRoZSBjYW5jZWxsYXRpb24gc28gZXZlbnQgbGlzdGVuZXJzIHdvbid0IGRvIGFueXRoaW5nIGV2ZW4gaWYgYWxyZWFkeSBzY2hlZHVsZWQuXG4gICAgICAgIGNhbmNlbGxlZCA9IHRydWU7XG5cbiAgICAgICAgLy8gUmVtb3ZlIHRoZSBldmVudCBsaXN0ZW5lcnMgc28gdGhleSB3b24ndCBydW4gaWYgdGhlIGV2ZW50cyBsYXRlciBmaXJlLlxuICAgICAgICBub2RlLnJlbW92ZUV2ZW50TGlzdGVuZXIoJ2xvYWQnLCBvbkxvYWQpO1xuICAgICAgICBub2RlLnJlbW92ZUV2ZW50TGlzdGVuZXIoJ2Vycm9yJywgb25FcnJvcik7XG5cbiAgICAgICAgLy8gQW5kIGZpbmFsbHksIGNsZWFuIHVwIHRoZSBwYWdlLlxuICAgICAgICBjbGVhbnVwKCk7XG4gICAgICB9O1xuICAgIH0pO1xuICB9XG59XG5cbi8qKlxuICogSWRlbnRpZmllcyByZXF1ZXN0cyB3aXRoIHRoZSBtZXRob2QgSlNPTlAgYW5kXG4gKiBzaGlmdHMgdGhlbSB0byB0aGUgYEpzb25wQ2xpZW50QmFja2VuZGAuXG4gKlxuICogQHNlZSBgSHR0cEludGVyY2VwdG9yYFxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuQEluamVjdGFibGUoKVxuZXhwb3J0IGNsYXNzIEpzb25wSW50ZXJjZXB0b3Ige1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGpzb25wOiBKc29ucENsaWVudEJhY2tlbmQpIHt9XG5cbiAgLyoqXG4gICAqIElkZW50aWZpZXMgYW5kIGhhbmRsZXMgYSBnaXZlbiBKU09OUCByZXF1ZXN0LlxuICAgKiBAcGFyYW0gcmVxIFRoZSBvdXRnb2luZyByZXF1ZXN0IG9iamVjdCB0byBoYW5kbGUuXG4gICAqIEBwYXJhbSBuZXh0IFRoZSBuZXh0IGludGVyY2VwdG9yIGluIHRoZSBjaGFpbiwgb3IgdGhlIGJhY2tlbmRcbiAgICogaWYgbm8gaW50ZXJjZXB0b3JzIHJlbWFpbiBpbiB0aGUgY2hhaW4uXG4gICAqIEByZXR1cm5zIEFuIG9ic2VydmFibGUgb2YgdGhlIGV2ZW50IHN0cmVhbS5cbiAgICovXG4gIGludGVyY2VwdChyZXE6IEh0dHBSZXF1ZXN0PGFueT4sIG5leHQ6IEh0dHBIYW5kbGVyKTogT2JzZXJ2YWJsZTxIdHRwRXZlbnQ8YW55Pj4ge1xuICAgIGlmIChyZXEubWV0aG9kID09PSAnSlNPTlAnKSB7XG4gICAgICByZXR1cm4gdGhpcy5qc29ucC5oYW5kbGUocmVxIGFzIEh0dHBSZXF1ZXN0PG5ldmVyPik7XG4gICAgfVxuICAgIC8vIEZhbGwgdGhyb3VnaCBmb3Igbm9ybWFsIEhUVFAgcmVxdWVzdHMuXG4gICAgcmV0dXJuIG5leHQuaGFuZGxlKHJlcSk7XG4gIH1cbn1cbiJdfQ==