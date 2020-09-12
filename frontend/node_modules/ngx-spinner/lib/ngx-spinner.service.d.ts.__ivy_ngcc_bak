import { Observable } from 'rxjs';
import { NgxSpinner, Spinner } from './ngx-spinner.enum';
export declare class NgxSpinnerService {
    /**
     * Spinner observable
     *
     * @memberof NgxSpinnerService
     */
    private spinnerObservable;
    /**
     * Creates an instance of NgxSpinnerService.
     * @memberof NgxSpinnerService
     */
    constructor();
    /**
    * Get subscription of desired spinner
    * @memberof NgxSpinnerService
    **/
    getSpinner(name: string): Observable<NgxSpinner>;
    /**
     * To show spinner
     *
     * @memberof NgxSpinnerService
     */
    show(name?: string, spinner?: Spinner): void;
    /**
    * To hide spinner
    *
    * @memberof NgxSpinnerService
    */
    hide(name?: string, debounce?: number): void;
}
