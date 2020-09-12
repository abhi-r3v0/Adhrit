/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
var _global = (typeof window === 'undefined' ? global : window);
/**
 * Wraps a test function in an asynchronous test zone. The test will automatically
 * complete when all asynchronous calls within this zone are done. Can be used
 * to wrap an {@link inject} call.
 *
 * Example:
 *
 * ```
 * it('...', async(inject([AClass], (object) => {
 *   object.doSomething.then(() => {
 *     expect(...);
 *   })
 * });
 * ```
 *
 *
 */
export function asyncFallback(fn) {
    // If we're running using the Jasmine test framework, adapt to call the 'done'
    // function when asynchronous activity is finished.
    if (_global.jasmine) {
        // Not using an arrow function to preserve context passed from call site
        return function (done) {
            if (!done) {
                // if we run beforeEach in @angular/core/testing/testing_internal then we get no done
                // fake it here and assume sync.
                done = function () { };
                done.fail = function (e) { throw e; };
            }
            runInTestZone(fn, this, done, function (err) {
                if (typeof err === 'string') {
                    return done.fail(new Error(err));
                }
                else {
                    done.fail(err);
                }
            });
        };
    }
    // Otherwise, return a promise which will resolve when asynchronous activity
    // is finished. This will be correctly consumed by the Mocha framework with
    // it('...', async(myFn)); or can be used in a custom framework.
    // Not using an arrow function to preserve context passed from call site
    return function () {
        var _this = this;
        return new Promise(function (finishCallback, failCallback) {
            runInTestZone(fn, _this, finishCallback, failCallback);
        });
    };
}
function runInTestZone(fn, context, finishCallback, failCallback) {
    var currentZone = Zone.current;
    var AsyncTestZoneSpec = Zone['AsyncTestZoneSpec'];
    if (AsyncTestZoneSpec === undefined) {
        throw new Error('AsyncTestZoneSpec is needed for the async() test helper but could not be found. ' +
            'Please make sure that your environment includes zone.js/dist/async-test.js');
    }
    var ProxyZoneSpec = Zone['ProxyZoneSpec'];
    if (ProxyZoneSpec === undefined) {
        throw new Error('ProxyZoneSpec is needed for the async() test helper but could not be found. ' +
            'Please make sure that your environment includes zone.js/dist/proxy.js');
    }
    var proxyZoneSpec = ProxyZoneSpec.get();
    ProxyZoneSpec.assertPresent();
    // We need to create the AsyncTestZoneSpec outside the ProxyZone.
    // If we do it in ProxyZone then we will get to infinite recursion.
    var proxyZone = Zone.current.getZoneWith('ProxyZoneSpec');
    var previousDelegate = proxyZoneSpec.getDelegate();
    proxyZone.parent.run(function () {
        var testZoneSpec = new AsyncTestZoneSpec(function () {
            // Need to restore the original zone.
            currentZone.run(function () {
                if (proxyZoneSpec.getDelegate() == testZoneSpec) {
                    // Only reset the zone spec if it's sill this one. Otherwise, assume it's OK.
                    proxyZoneSpec.setDelegate(previousDelegate);
                }
                finishCallback();
            });
        }, function (error) {
            // Need to restore the original zone.
            currentZone.run(function () {
                if (proxyZoneSpec.getDelegate() == testZoneSpec) {
                    // Only reset the zone spec if it's sill this one. Otherwise, assume it's OK.
                    proxyZoneSpec.setDelegate(previousDelegate);
                }
                failCallback(error);
            });
        }, 'test');
        proxyZoneSpec.setDelegate(testZoneSpec);
    });
    return Zone.current.runGuarded(fn, context);
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXN5bmNfZmFsbGJhY2suanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3Rlc3Rpbmcvc3JjL2FzeW5jX2ZhbGxiYWNrLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQVFILElBQU0sT0FBTyxHQUFRLENBQUMsT0FBTyxNQUFNLEtBQUssV0FBVyxDQUFDLENBQUMsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLE1BQU0sQ0FBQyxDQUFDO0FBRXZFOzs7Ozs7Ozs7Ozs7Ozs7O0dBZ0JHO0FBQ0gsTUFBTSxVQUFVLGFBQWEsQ0FBQyxFQUFZO0lBQ3hDLDhFQUE4RTtJQUM5RSxtREFBbUQ7SUFDbkQsSUFBSSxPQUFPLENBQUMsT0FBTyxFQUFFO1FBQ25CLHdFQUF3RTtRQUN4RSxPQUFPLFVBQXdCLElBQVM7WUFDdEMsSUFBSSxDQUFDLElBQUksRUFBRTtnQkFDVCxxRkFBcUY7Z0JBQ3JGLGdDQUFnQztnQkFDaEMsSUFBSSxHQUFHLGNBQVksQ0FBQyxDQUFDO2dCQUNyQixJQUFJLENBQUMsSUFBSSxHQUFHLFVBQVMsQ0FBTSxJQUFJLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO2FBQzNDO1lBQ0QsYUFBYSxDQUFDLEVBQUUsRUFBRSxJQUFJLEVBQUUsSUFBSSxFQUFFLFVBQUMsR0FBUTtnQkFDckMsSUFBSSxPQUFPLEdBQUcsS0FBSyxRQUFRLEVBQUU7b0JBQzNCLE9BQU8sSUFBSSxDQUFDLElBQUksQ0FBQyxJQUFJLEtBQUssQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDO2lCQUNsQztxQkFBTTtvQkFDTCxJQUFJLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxDQUFDO2lCQUNoQjtZQUNILENBQUMsQ0FBQyxDQUFDO1FBQ0wsQ0FBQyxDQUFDO0tBQ0g7SUFDRCw0RUFBNEU7SUFDNUUsMkVBQTJFO0lBQzNFLGdFQUFnRTtJQUNoRSx3RUFBd0U7SUFDeEUsT0FBTztRQUFBLGlCQUlOO1FBSEMsT0FBTyxJQUFJLE9BQU8sQ0FBTyxVQUFDLGNBQWMsRUFBRSxZQUFZO1lBQ3BELGFBQWEsQ0FBQyxFQUFFLEVBQUUsS0FBSSxFQUFFLGNBQWMsRUFBRSxZQUFZLENBQUMsQ0FBQztRQUN4RCxDQUFDLENBQUMsQ0FBQztJQUNMLENBQUMsQ0FBQztBQUNKLENBQUM7QUFFRCxTQUFTLGFBQWEsQ0FDbEIsRUFBWSxFQUFFLE9BQVksRUFBRSxjQUF3QixFQUFFLFlBQXNCO0lBQzlFLElBQU0sV0FBVyxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUM7SUFDakMsSUFBTSxpQkFBaUIsR0FBSSxJQUFZLENBQUMsbUJBQW1CLENBQUMsQ0FBQztJQUM3RCxJQUFJLGlCQUFpQixLQUFLLFNBQVMsRUFBRTtRQUNuQyxNQUFNLElBQUksS0FBSyxDQUNYLGtGQUFrRjtZQUNsRiw0RUFBNEUsQ0FBQyxDQUFDO0tBQ25GO0lBQ0QsSUFBTSxhQUFhLEdBQUksSUFBWSxDQUFDLGVBQWUsQ0FHbEQsQ0FBQztJQUNGLElBQUksYUFBYSxLQUFLLFNBQVMsRUFBRTtRQUMvQixNQUFNLElBQUksS0FBSyxDQUNYLDhFQUE4RTtZQUM5RSx1RUFBdUUsQ0FBQyxDQUFDO0tBQzlFO0lBQ0QsSUFBTSxhQUFhLEdBQUcsYUFBYSxDQUFDLEdBQUcsRUFBRSxDQUFDO0lBQzFDLGFBQWEsQ0FBQyxhQUFhLEVBQUUsQ0FBQztJQUM5QixpRUFBaUU7SUFDakUsbUVBQW1FO0lBQ25FLElBQU0sU0FBUyxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUMsV0FBVyxDQUFDLGVBQWUsQ0FBQyxDQUFDO0lBQzVELElBQU0sZ0JBQWdCLEdBQUcsYUFBYSxDQUFDLFdBQVcsRUFBRSxDQUFDO0lBQ3JELFNBQVcsQ0FBQyxNQUFRLENBQUMsR0FBRyxDQUFDO1FBQ3ZCLElBQU0sWUFBWSxHQUFhLElBQUksaUJBQWlCLENBQ2hEO1lBQ0UscUNBQXFDO1lBQ3JDLFdBQVcsQ0FBQyxHQUFHLENBQUM7Z0JBQ2QsSUFBSSxhQUFhLENBQUMsV0FBVyxFQUFFLElBQUksWUFBWSxFQUFFO29CQUMvQyw2RUFBNkU7b0JBQzdFLGFBQWEsQ0FBQyxXQUFXLENBQUMsZ0JBQWdCLENBQUMsQ0FBQztpQkFDN0M7Z0JBQ0QsY0FBYyxFQUFFLENBQUM7WUFDbkIsQ0FBQyxDQUFDLENBQUM7UUFDTCxDQUFDLEVBQ0QsVUFBQyxLQUFVO1lBQ1QscUNBQXFDO1lBQ3JDLFdBQVcsQ0FBQyxHQUFHLENBQUM7Z0JBQ2QsSUFBSSxhQUFhLENBQUMsV0FBVyxFQUFFLElBQUksWUFBWSxFQUFFO29CQUMvQyw2RUFBNkU7b0JBQzdFLGFBQWEsQ0FBQyxXQUFXLENBQUMsZ0JBQWdCLENBQUMsQ0FBQztpQkFDN0M7Z0JBQ0QsWUFBWSxDQUFDLEtBQUssQ0FBQyxDQUFDO1lBQ3RCLENBQUMsQ0FBQyxDQUFDO1FBQ0wsQ0FBQyxFQUNELE1BQU0sQ0FBQyxDQUFDO1FBQ1osYUFBYSxDQUFDLFdBQVcsQ0FBQyxZQUFZLENBQUMsQ0FBQztJQUMxQyxDQUFDLENBQUMsQ0FBQztJQUNILE9BQU8sSUFBSSxDQUFDLE9BQU8sQ0FBQyxVQUFVLENBQUMsRUFBRSxFQUFFLE9BQU8sQ0FBQyxDQUFDO0FBQzlDLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbi8qKlxuICogYXN5bmMgaGFzIGJlZW4gbW92ZWQgdG8gem9uZS5qc1xuICogdGhpcyBmaWxlIGlzIGZvciBmYWxsYmFjayBpbiBjYXNlIG9sZCB2ZXJzaW9uIG9mIHpvbmUuanMgaXMgdXNlZFxuICovXG5kZWNsYXJlIHZhciBnbG9iYWw6IGFueTtcblxuY29uc3QgX2dsb2JhbCA9IDxhbnk+KHR5cGVvZiB3aW5kb3cgPT09ICd1bmRlZmluZWQnID8gZ2xvYmFsIDogd2luZG93KTtcblxuLyoqXG4gKiBXcmFwcyBhIHRlc3QgZnVuY3Rpb24gaW4gYW4gYXN5bmNocm9ub3VzIHRlc3Qgem9uZS4gVGhlIHRlc3Qgd2lsbCBhdXRvbWF0aWNhbGx5XG4gKiBjb21wbGV0ZSB3aGVuIGFsbCBhc3luY2hyb25vdXMgY2FsbHMgd2l0aGluIHRoaXMgem9uZSBhcmUgZG9uZS4gQ2FuIGJlIHVzZWRcbiAqIHRvIHdyYXAgYW4ge0BsaW5rIGluamVjdH0gY2FsbC5cbiAqXG4gKiBFeGFtcGxlOlxuICpcbiAqIGBgYFxuICogaXQoJy4uLicsIGFzeW5jKGluamVjdChbQUNsYXNzXSwgKG9iamVjdCkgPT4ge1xuICogICBvYmplY3QuZG9Tb21ldGhpbmcudGhlbigoKSA9PiB7XG4gKiAgICAgZXhwZWN0KC4uLik7XG4gKiAgIH0pXG4gKiB9KTtcbiAqIGBgYFxuICpcbiAqXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBhc3luY0ZhbGxiYWNrKGZuOiBGdW5jdGlvbik6IChkb25lOiBhbnkpID0+IGFueSB7XG4gIC8vIElmIHdlJ3JlIHJ1bm5pbmcgdXNpbmcgdGhlIEphc21pbmUgdGVzdCBmcmFtZXdvcmssIGFkYXB0IHRvIGNhbGwgdGhlICdkb25lJ1xuICAvLyBmdW5jdGlvbiB3aGVuIGFzeW5jaHJvbm91cyBhY3Rpdml0eSBpcyBmaW5pc2hlZC5cbiAgaWYgKF9nbG9iYWwuamFzbWluZSkge1xuICAgIC8vIE5vdCB1c2luZyBhbiBhcnJvdyBmdW5jdGlvbiB0byBwcmVzZXJ2ZSBjb250ZXh0IHBhc3NlZCBmcm9tIGNhbGwgc2l0ZVxuICAgIHJldHVybiBmdW5jdGlvbih0aGlzOiB1bmtub3duLCBkb25lOiBhbnkpIHtcbiAgICAgIGlmICghZG9uZSkge1xuICAgICAgICAvLyBpZiB3ZSBydW4gYmVmb3JlRWFjaCBpbiBAYW5ndWxhci9jb3JlL3Rlc3RpbmcvdGVzdGluZ19pbnRlcm5hbCB0aGVuIHdlIGdldCBubyBkb25lXG4gICAgICAgIC8vIGZha2UgaXQgaGVyZSBhbmQgYXNzdW1lIHN5bmMuXG4gICAgICAgIGRvbmUgPSBmdW5jdGlvbigpIHt9O1xuICAgICAgICBkb25lLmZhaWwgPSBmdW5jdGlvbihlOiBhbnkpIHsgdGhyb3cgZTsgfTtcbiAgICAgIH1cbiAgICAgIHJ1bkluVGVzdFpvbmUoZm4sIHRoaXMsIGRvbmUsIChlcnI6IGFueSkgPT4ge1xuICAgICAgICBpZiAodHlwZW9mIGVyciA9PT0gJ3N0cmluZycpIHtcbiAgICAgICAgICByZXR1cm4gZG9uZS5mYWlsKG5ldyBFcnJvcihlcnIpKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICBkb25lLmZhaWwoZXJyKTtcbiAgICAgICAgfVxuICAgICAgfSk7XG4gICAgfTtcbiAgfVxuICAvLyBPdGhlcndpc2UsIHJldHVybiBhIHByb21pc2Ugd2hpY2ggd2lsbCByZXNvbHZlIHdoZW4gYXN5bmNocm9ub3VzIGFjdGl2aXR5XG4gIC8vIGlzIGZpbmlzaGVkLiBUaGlzIHdpbGwgYmUgY29ycmVjdGx5IGNvbnN1bWVkIGJ5IHRoZSBNb2NoYSBmcmFtZXdvcmsgd2l0aFxuICAvLyBpdCgnLi4uJywgYXN5bmMobXlGbikpOyBvciBjYW4gYmUgdXNlZCBpbiBhIGN1c3RvbSBmcmFtZXdvcmsuXG4gIC8vIE5vdCB1c2luZyBhbiBhcnJvdyBmdW5jdGlvbiB0byBwcmVzZXJ2ZSBjb250ZXh0IHBhc3NlZCBmcm9tIGNhbGwgc2l0ZVxuICByZXR1cm4gZnVuY3Rpb24odGhpczogdW5rbm93bikge1xuICAgIHJldHVybiBuZXcgUHJvbWlzZTx2b2lkPigoZmluaXNoQ2FsbGJhY2ssIGZhaWxDYWxsYmFjaykgPT4ge1xuICAgICAgcnVuSW5UZXN0Wm9uZShmbiwgdGhpcywgZmluaXNoQ2FsbGJhY2ssIGZhaWxDYWxsYmFjayk7XG4gICAgfSk7XG4gIH07XG59XG5cbmZ1bmN0aW9uIHJ1bkluVGVzdFpvbmUoXG4gICAgZm46IEZ1bmN0aW9uLCBjb250ZXh0OiBhbnksIGZpbmlzaENhbGxiYWNrOiBGdW5jdGlvbiwgZmFpbENhbGxiYWNrOiBGdW5jdGlvbikge1xuICBjb25zdCBjdXJyZW50Wm9uZSA9IFpvbmUuY3VycmVudDtcbiAgY29uc3QgQXN5bmNUZXN0Wm9uZVNwZWMgPSAoWm9uZSBhcyBhbnkpWydBc3luY1Rlc3Rab25lU3BlYyddO1xuICBpZiAoQXN5bmNUZXN0Wm9uZVNwZWMgPT09IHVuZGVmaW5lZCkge1xuICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgJ0FzeW5jVGVzdFpvbmVTcGVjIGlzIG5lZWRlZCBmb3IgdGhlIGFzeW5jKCkgdGVzdCBoZWxwZXIgYnV0IGNvdWxkIG5vdCBiZSBmb3VuZC4gJyArXG4gICAgICAgICdQbGVhc2UgbWFrZSBzdXJlIHRoYXQgeW91ciBlbnZpcm9ubWVudCBpbmNsdWRlcyB6b25lLmpzL2Rpc3QvYXN5bmMtdGVzdC5qcycpO1xuICB9XG4gIGNvbnN0IFByb3h5Wm9uZVNwZWMgPSAoWm9uZSBhcyBhbnkpWydQcm94eVpvbmVTcGVjJ10gYXMge1xuICAgIGdldCgpOiB7c2V0RGVsZWdhdGUoc3BlYzogWm9uZVNwZWMpOiB2b2lkOyBnZXREZWxlZ2F0ZSgpOiBab25lU3BlYzt9O1xuICAgIGFzc2VydFByZXNlbnQ6ICgpID0+IHZvaWQ7XG4gIH07XG4gIGlmIChQcm94eVpvbmVTcGVjID09PSB1bmRlZmluZWQpIHtcbiAgICB0aHJvdyBuZXcgRXJyb3IoXG4gICAgICAgICdQcm94eVpvbmVTcGVjIGlzIG5lZWRlZCBmb3IgdGhlIGFzeW5jKCkgdGVzdCBoZWxwZXIgYnV0IGNvdWxkIG5vdCBiZSBmb3VuZC4gJyArXG4gICAgICAgICdQbGVhc2UgbWFrZSBzdXJlIHRoYXQgeW91ciBlbnZpcm9ubWVudCBpbmNsdWRlcyB6b25lLmpzL2Rpc3QvcHJveHkuanMnKTtcbiAgfVxuICBjb25zdCBwcm94eVpvbmVTcGVjID0gUHJveHlab25lU3BlYy5nZXQoKTtcbiAgUHJveHlab25lU3BlYy5hc3NlcnRQcmVzZW50KCk7XG4gIC8vIFdlIG5lZWQgdG8gY3JlYXRlIHRoZSBBc3luY1Rlc3Rab25lU3BlYyBvdXRzaWRlIHRoZSBQcm94eVpvbmUuXG4gIC8vIElmIHdlIGRvIGl0IGluIFByb3h5Wm9uZSB0aGVuIHdlIHdpbGwgZ2V0IHRvIGluZmluaXRlIHJlY3Vyc2lvbi5cbiAgY29uc3QgcHJveHlab25lID0gWm9uZS5jdXJyZW50LmdldFpvbmVXaXRoKCdQcm94eVpvbmVTcGVjJyk7XG4gIGNvbnN0IHByZXZpb3VzRGVsZWdhdGUgPSBwcm94eVpvbmVTcGVjLmdldERlbGVnYXRlKCk7XG4gIHByb3h5Wm9uZSAhLnBhcmVudCAhLnJ1bigoKSA9PiB7XG4gICAgY29uc3QgdGVzdFpvbmVTcGVjOiBab25lU3BlYyA9IG5ldyBBc3luY1Rlc3Rab25lU3BlYyhcbiAgICAgICAgKCkgPT4ge1xuICAgICAgICAgIC8vIE5lZWQgdG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgem9uZS5cbiAgICAgICAgICBjdXJyZW50Wm9uZS5ydW4oKCkgPT4ge1xuICAgICAgICAgICAgaWYgKHByb3h5Wm9uZVNwZWMuZ2V0RGVsZWdhdGUoKSA9PSB0ZXN0Wm9uZVNwZWMpIHtcbiAgICAgICAgICAgICAgLy8gT25seSByZXNldCB0aGUgem9uZSBzcGVjIGlmIGl0J3Mgc2lsbCB0aGlzIG9uZS4gT3RoZXJ3aXNlLCBhc3N1bWUgaXQncyBPSy5cbiAgICAgICAgICAgICAgcHJveHlab25lU3BlYy5zZXREZWxlZ2F0ZShwcmV2aW91c0RlbGVnYXRlKTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIGZpbmlzaENhbGxiYWNrKCk7XG4gICAgICAgICAgfSk7XG4gICAgICAgIH0sXG4gICAgICAgIChlcnJvcjogYW55KSA9PiB7XG4gICAgICAgICAgLy8gTmVlZCB0byByZXN0b3JlIHRoZSBvcmlnaW5hbCB6b25lLlxuICAgICAgICAgIGN1cnJlbnRab25lLnJ1bigoKSA9PiB7XG4gICAgICAgICAgICBpZiAocHJveHlab25lU3BlYy5nZXREZWxlZ2F0ZSgpID09IHRlc3Rab25lU3BlYykge1xuICAgICAgICAgICAgICAvLyBPbmx5IHJlc2V0IHRoZSB6b25lIHNwZWMgaWYgaXQncyBzaWxsIHRoaXMgb25lLiBPdGhlcndpc2UsIGFzc3VtZSBpdCdzIE9LLlxuICAgICAgICAgICAgICBwcm94eVpvbmVTcGVjLnNldERlbGVnYXRlKHByZXZpb3VzRGVsZWdhdGUpO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgZmFpbENhbGxiYWNrKGVycm9yKTtcbiAgICAgICAgICB9KTtcbiAgICAgICAgfSxcbiAgICAgICAgJ3Rlc3QnKTtcbiAgICBwcm94eVpvbmVTcGVjLnNldERlbGVnYXRlKHRlc3Rab25lU3BlYyk7XG4gIH0pO1xuICByZXR1cm4gWm9uZS5jdXJyZW50LnJ1bkd1YXJkZWQoZm4sIGNvbnRleHQpO1xufVxuIl19