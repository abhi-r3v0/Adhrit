/**
 * @copyright Valor Software
 * @copyright Angular ng-bootstrap team
 */
var Trigger = /** @class */ (function () {
    function Trigger(open, close) {
        this.open = open;
        this.close = close || open;
    }
    Trigger.prototype.isManual = function () { return this.open === 'manual' || this.close === 'manual'; };
    return Trigger;
}());
export { Trigger };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJpZ2dlci5jbGFzcy5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvdXRpbHMvdHJpZ2dlci5jbGFzcy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7O0dBR0c7QUFFRjtJQUlFLGlCQUFtQixJQUFZLEVBQUUsS0FBYztRQUM3QyxJQUFJLENBQUMsSUFBSSxHQUFHLElBQUksQ0FBQztRQUNqQixJQUFJLENBQUMsS0FBSyxHQUFHLEtBQUssSUFBSSxJQUFJLENBQUM7SUFDN0IsQ0FBQztJQUVNLDBCQUFRLEdBQWYsY0FBNkIsT0FBTyxJQUFJLENBQUMsSUFBSSxLQUFLLFFBQVEsSUFBSSxJQUFJLENBQUMsS0FBSyxLQUFLLFFBQVEsQ0FBQyxDQUFDLENBQUM7SUFDMUYsY0FBQztBQUFELENBQUMsQUFWRCxJQVVDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAY29weXJpZ2h0IFZhbG9yIFNvZnR3YXJlXG4gKiBAY29weXJpZ2h0IEFuZ3VsYXIgbmctYm9vdHN0cmFwIHRlYW1cbiAqL1xuXG4gZXhwb3J0IGNsYXNzIFRyaWdnZXIge1xuICAgcHVibGljIG9wZW46IHN0cmluZztcbiAgIHB1YmxpYyBjbG9zZT86IHN0cmluZztcblxuICAgcHVibGljIGNvbnN0cnVjdG9yKG9wZW46IHN0cmluZywgY2xvc2U/OiBzdHJpbmcpIHtcbiAgICAgdGhpcy5vcGVuID0gb3BlbjtcbiAgICAgdGhpcy5jbG9zZSA9IGNsb3NlIHx8IG9wZW47XG4gICB9XG5cbiAgIHB1YmxpYyBpc01hbnVhbCgpOiBib29sZWFuIHsgcmV0dXJuIHRoaXMub3BlbiA9PT0gJ21hbnVhbCcgfHwgdGhpcy5jbG9zZSA9PT0gJ21hbnVhbCc7IH1cbiB9XG4iXX0=