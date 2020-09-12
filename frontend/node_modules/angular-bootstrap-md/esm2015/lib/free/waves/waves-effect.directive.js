import { __decorate, __metadata } from "tslib";
import { Directive, ElementRef, HostListener } from '@angular/core';
let WavesDirective = class WavesDirective {
    constructor(el) {
        this.el = el;
    }
    click(event) {
        if (!this.el.nativeElement.classList.contains('disabled')) {
            const button = this.el.nativeElement;
            if (!button.classList.contains('waves-effect')) {
                button.className += ' waves-effect';
            }
            const xPos = event.clientX - button.getBoundingClientRect().left;
            const yPos = event.clientY - button.getBoundingClientRect().top;
            const tmp = document.createElement('div');
            tmp.className += 'waves-ripple waves-rippling';
            const ripple = button.appendChild(tmp);
            const top = yPos + 'px';
            const left = xPos + 'px';
            tmp.style.top = top;
            tmp.style.left = left;
            const scale = 'scale(' + (button.clientWidth / 100) * 3 + ') translate(0,0)';
            // tslint:disable-next-line: deprecation
            tmp.style.webkitTransform = scale;
            tmp.style.transform = scale;
            tmp.style.opacity = '1';
            const duration = 750;
            // tslint:disable-next-line: deprecation
            tmp.style.webkitTransitionDuration = duration + 'ms';
            tmp.style.transitionDuration = duration + 'ms';
            this.removeRipple(button, ripple);
        }
    }
    removeRipple(button, ripple) {
        ripple.classList.remove('waves-rippling');
        setTimeout(() => {
            ripple.style.opacity = '0';
            setTimeout(() => {
                button.removeChild(ripple);
            }, 750);
        }, 200);
    }
};
WavesDirective.ctorParameters = () => [
    { type: ElementRef }
];
__decorate([
    HostListener('click', ['$event']),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object]),
    __metadata("design:returntype", void 0)
], WavesDirective.prototype, "click", null);
WavesDirective = __decorate([
    Directive({
        selector: '[mdbWavesEffect]',
    }),
    __metadata("design:paramtypes", [ElementRef])
], WavesDirective);
export { WavesDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoid2F2ZXMtZWZmZWN0LmRpcmVjdGl2ZS5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvd2F2ZXMvd2F2ZXMtZWZmZWN0LmRpcmVjdGl2ZS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUEsT0FBTyxFQUFFLFNBQVMsRUFBRSxVQUFVLEVBQUUsWUFBWSxFQUFFLE1BQU0sZUFBZSxDQUFDO0FBSXBFLElBQWEsY0FBYyxHQUEzQixNQUFhLGNBQWM7SUFDekIsWUFBbUIsRUFBYztRQUFkLE9BQUUsR0FBRixFQUFFLENBQVk7SUFBRyxDQUFDO0lBRzlCLEtBQUssQ0FBQyxLQUFVO1FBQ3JCLElBQUksQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLGFBQWEsQ0FBQyxTQUFTLENBQUMsUUFBUSxDQUFDLFVBQVUsQ0FBQyxFQUFFO1lBQ3pELE1BQU0sTUFBTSxHQUFHLElBQUksQ0FBQyxFQUFFLENBQUMsYUFBYSxDQUFDO1lBQ3JDLElBQUksQ0FBQyxNQUFNLENBQUMsU0FBUyxDQUFDLFFBQVEsQ0FBQyxjQUFjLENBQUMsRUFBRTtnQkFDOUMsTUFBTSxDQUFDLFNBQVMsSUFBSSxlQUFlLENBQUM7YUFDckM7WUFFRCxNQUFNLElBQUksR0FBRyxLQUFLLENBQUMsT0FBTyxHQUFHLE1BQU0sQ0FBQyxxQkFBcUIsRUFBRSxDQUFDLElBQUksQ0FBQztZQUNqRSxNQUFNLElBQUksR0FBRyxLQUFLLENBQUMsT0FBTyxHQUFHLE1BQU0sQ0FBQyxxQkFBcUIsRUFBRSxDQUFDLEdBQUcsQ0FBQztZQUVoRSxNQUFNLEdBQUcsR0FBRyxRQUFRLENBQUMsYUFBYSxDQUFDLEtBQUssQ0FBQyxDQUFDO1lBQzFDLEdBQUcsQ0FBQyxTQUFTLElBQUksNkJBQTZCLENBQUM7WUFDL0MsTUFBTSxNQUFNLEdBQUcsTUFBTSxDQUFDLFdBQVcsQ0FBQyxHQUFHLENBQUMsQ0FBQztZQUV2QyxNQUFNLEdBQUcsR0FBRyxJQUFJLEdBQUcsSUFBSSxDQUFDO1lBQ3hCLE1BQU0sSUFBSSxHQUFHLElBQUksR0FBRyxJQUFJLENBQUM7WUFFekIsR0FBRyxDQUFDLEtBQUssQ0FBQyxHQUFHLEdBQUcsR0FBRyxDQUFDO1lBQ3BCLEdBQUcsQ0FBQyxLQUFLLENBQUMsSUFBSSxHQUFHLElBQUksQ0FBQztZQUV0QixNQUFNLEtBQUssR0FBRyxRQUFRLEdBQUcsQ0FBQyxNQUFNLENBQUMsV0FBVyxHQUFHLEdBQUcsQ0FBQyxHQUFHLENBQUMsR0FBRyxrQkFBa0IsQ0FBQztZQUU3RSx3Q0FBd0M7WUFDeEMsR0FBRyxDQUFDLEtBQUssQ0FBQyxlQUFlLEdBQUcsS0FBSyxDQUFDO1lBQ2xDLEdBQUcsQ0FBQyxLQUFLLENBQUMsU0FBUyxHQUFHLEtBQUssQ0FBQztZQUM1QixHQUFHLENBQUMsS0FBSyxDQUFDLE9BQU8sR0FBRyxHQUFHLENBQUM7WUFFeEIsTUFBTSxRQUFRLEdBQUcsR0FBRyxDQUFDO1lBRXJCLHdDQUF3QztZQUN4QyxHQUFHLENBQUMsS0FBSyxDQUFDLHdCQUF3QixHQUFHLFFBQVEsR0FBRyxJQUFJLENBQUM7WUFDckQsR0FBRyxDQUFDLEtBQUssQ0FBQyxrQkFBa0IsR0FBRyxRQUFRLEdBQUcsSUFBSSxDQUFDO1lBRS9DLElBQUksQ0FBQyxZQUFZLENBQUMsTUFBTSxFQUFFLE1BQU0sQ0FBQyxDQUFDO1NBQ25DO0lBQ0gsQ0FBQztJQUVELFlBQVksQ0FBQyxNQUFXLEVBQUUsTUFBVztRQUNuQyxNQUFNLENBQUMsU0FBUyxDQUFDLE1BQU0sQ0FBQyxnQkFBZ0IsQ0FBQyxDQUFDO1FBRTFDLFVBQVUsQ0FBQyxHQUFHLEVBQUU7WUFDZCxNQUFNLENBQUMsS0FBSyxDQUFDLE9BQU8sR0FBRyxHQUFHLENBQUM7WUFFM0IsVUFBVSxDQUFDLEdBQUcsRUFBRTtnQkFDZCxNQUFNLENBQUMsV0FBVyxDQUFDLE1BQU0sQ0FBQyxDQUFDO1lBQzdCLENBQUMsRUFBRSxHQUFHLENBQUMsQ0FBQztRQUNWLENBQUMsRUFBRSxHQUFHLENBQUMsQ0FBQztJQUNWLENBQUM7Q0FDRixDQUFBOztZQW5Ed0IsVUFBVTs7QUFHakM7SUFEQyxZQUFZLENBQUMsT0FBTyxFQUFFLENBQUMsUUFBUSxDQUFDLENBQUM7Ozs7MkNBb0NqQztBQXZDVSxjQUFjO0lBSDFCLFNBQVMsQ0FBQztRQUNULFFBQVEsRUFBRSxrQkFBa0I7S0FDN0IsQ0FBQztxQ0FFdUIsVUFBVTtHQUR0QixjQUFjLENBb0QxQjtTQXBEWSxjQUFjIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgRGlyZWN0aXZlLCBFbGVtZW50UmVmLCBIb3N0TGlzdGVuZXIgfSBmcm9tICdAYW5ndWxhci9jb3JlJztcbkBEaXJlY3RpdmUoe1xuICBzZWxlY3RvcjogJ1ttZGJXYXZlc0VmZmVjdF0nLFxufSlcbmV4cG9ydCBjbGFzcyBXYXZlc0RpcmVjdGl2ZSB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBlbDogRWxlbWVudFJlZikge31cblxuICBASG9zdExpc3RlbmVyKCdjbGljaycsIFsnJGV2ZW50J10pXG4gIHB1YmxpYyBjbGljayhldmVudDogYW55KSB7XG4gICAgaWYgKCF0aGlzLmVsLm5hdGl2ZUVsZW1lbnQuY2xhc3NMaXN0LmNvbnRhaW5zKCdkaXNhYmxlZCcpKSB7XG4gICAgICBjb25zdCBidXR0b24gPSB0aGlzLmVsLm5hdGl2ZUVsZW1lbnQ7XG4gICAgICBpZiAoIWJ1dHRvbi5jbGFzc0xpc3QuY29udGFpbnMoJ3dhdmVzLWVmZmVjdCcpKSB7XG4gICAgICAgIGJ1dHRvbi5jbGFzc05hbWUgKz0gJyB3YXZlcy1lZmZlY3QnO1xuICAgICAgfVxuXG4gICAgICBjb25zdCB4UG9zID0gZXZlbnQuY2xpZW50WCAtIGJ1dHRvbi5nZXRCb3VuZGluZ0NsaWVudFJlY3QoKS5sZWZ0O1xuICAgICAgY29uc3QgeVBvcyA9IGV2ZW50LmNsaWVudFkgLSBidXR0b24uZ2V0Qm91bmRpbmdDbGllbnRSZWN0KCkudG9wO1xuXG4gICAgICBjb25zdCB0bXAgPSBkb2N1bWVudC5jcmVhdGVFbGVtZW50KCdkaXYnKTtcbiAgICAgIHRtcC5jbGFzc05hbWUgKz0gJ3dhdmVzLXJpcHBsZSB3YXZlcy1yaXBwbGluZyc7XG4gICAgICBjb25zdCByaXBwbGUgPSBidXR0b24uYXBwZW5kQ2hpbGQodG1wKTtcblxuICAgICAgY29uc3QgdG9wID0geVBvcyArICdweCc7XG4gICAgICBjb25zdCBsZWZ0ID0geFBvcyArICdweCc7XG5cbiAgICAgIHRtcC5zdHlsZS50b3AgPSB0b3A7XG4gICAgICB0bXAuc3R5bGUubGVmdCA9IGxlZnQ7XG5cbiAgICAgIGNvbnN0IHNjYWxlID0gJ3NjYWxlKCcgKyAoYnV0dG9uLmNsaWVudFdpZHRoIC8gMTAwKSAqIDMgKyAnKSB0cmFuc2xhdGUoMCwwKSc7XG5cbiAgICAgIC8vIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTogZGVwcmVjYXRpb25cbiAgICAgIHRtcC5zdHlsZS53ZWJraXRUcmFuc2Zvcm0gPSBzY2FsZTtcbiAgICAgIHRtcC5zdHlsZS50cmFuc2Zvcm0gPSBzY2FsZTtcbiAgICAgIHRtcC5zdHlsZS5vcGFjaXR5ID0gJzEnO1xuXG4gICAgICBjb25zdCBkdXJhdGlvbiA9IDc1MDtcblxuICAgICAgLy8gdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOiBkZXByZWNhdGlvblxuICAgICAgdG1wLnN0eWxlLndlYmtpdFRyYW5zaXRpb25EdXJhdGlvbiA9IGR1cmF0aW9uICsgJ21zJztcbiAgICAgIHRtcC5zdHlsZS50cmFuc2l0aW9uRHVyYXRpb24gPSBkdXJhdGlvbiArICdtcyc7XG5cbiAgICAgIHRoaXMucmVtb3ZlUmlwcGxlKGJ1dHRvbiwgcmlwcGxlKTtcbiAgICB9XG4gIH1cblxuICByZW1vdmVSaXBwbGUoYnV0dG9uOiBhbnksIHJpcHBsZTogYW55KSB7XG4gICAgcmlwcGxlLmNsYXNzTGlzdC5yZW1vdmUoJ3dhdmVzLXJpcHBsaW5nJyk7XG5cbiAgICBzZXRUaW1lb3V0KCgpID0+IHtcbiAgICAgIHJpcHBsZS5zdHlsZS5vcGFjaXR5ID0gJzAnO1xuXG4gICAgICBzZXRUaW1lb3V0KCgpID0+IHtcbiAgICAgICAgYnV0dG9uLnJlbW92ZUNoaWxkKHJpcHBsZSk7XG4gICAgICB9LCA3NTApO1xuICAgIH0sIDIwMCk7XG4gIH1cbn1cbiJdfQ==