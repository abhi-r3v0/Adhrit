var LinkedList = /** @class */ (function () {
    function LinkedList() {
        this.length = 0;
        this.asArray = [];
        // Array methods overriding END
    }
    LinkedList.prototype.get = function (position) {
        if (this.length === 0 || position < 0 || position >= this.length) {
            return void 0;
        }
        var current = this.head;
        for (var index = 0; index < position; index++) {
            current = current.next;
        }
        return current.value;
    };
    LinkedList.prototype.add = function (value, position) {
        if (position === void 0) { position = this.length; }
        if (position < 0 || position > this.length) {
            throw new Error('Position is out of the list');
        }
        /* tslint:disable-next-line: no-any*/
        var node = {
            value: value,
            next: undefined,
            previous: undefined
        };
        if (this.length === 0) {
            this.head = node;
            this.tail = node;
            this.current = node;
        }
        else {
            if (position === 0) {
                // first node
                node.next = this.head;
                this.head.previous = node;
                this.head = node;
            }
            else if (position === this.length) {
                // last node
                this.tail.next = node;
                node.previous = this.tail;
                this.tail = node;
            }
            else {
                // node in middle
                var currentPreviousNode = this.getNode(position - 1);
                var currentNextNode = currentPreviousNode.next;
                currentPreviousNode.next = node;
                currentNextNode.previous = node;
                node.previous = currentPreviousNode;
                node.next = currentNextNode;
            }
        }
        this.length++;
        this.createInternalArrayRepresentation();
    };
    LinkedList.prototype.remove = function (position) {
        if (position === void 0) { position = 0; }
        if (this.length === 0 || position < 0 || position >= this.length) {
            throw new Error('Position is out of the list');
        }
        if (position === 0) {
            // first node
            this.head = this.head.next;
            if (this.head) {
                // there is no second node
                this.head.previous = undefined;
            }
            else {
                // there is no second node
                this.tail = undefined;
            }
        }
        else if (position === this.length - 1) {
            // last node
            this.tail = this.tail.previous;
            this.tail.next = undefined;
        }
        else {
            // middle node
            var removedNode = this.getNode(position);
            removedNode.next.previous = removedNode.previous;
            removedNode.previous.next = removedNode.next;
        }
        this.length--;
        this.createInternalArrayRepresentation();
    };
    LinkedList.prototype.set = function (position, value) {
        if (this.length === 0 || position < 0 || position >= this.length) {
            throw new Error('Position is out of the list');
        }
        var node = this.getNode(position);
        node.value = value;
        this.createInternalArrayRepresentation();
    };
    LinkedList.prototype.toArray = function () {
        return this.asArray;
    };
    /* tslint:disable-next-line: no-any*/
    LinkedList.prototype.findAll = function (fn) {
        var current = this.head;
        /* tslint:disable-next-line: no-any*/
        var result = [];
        for (var index = 0; index < this.length; index++) {
            if (fn(current.value, index)) {
                result.push({ index: index, value: current.value });
            }
            current = current.next;
        }
        return result;
    };
    // Array methods overriding start
    LinkedList.prototype.push = function () {
        var _this = this;
        var args = [];
        for (var _i = 0; _i < arguments.length; _i++) {
            args[_i] = arguments[_i];
        }
        /* tslint:disable-next-line: no-any*/
        args.forEach(function (arg) {
            _this.add(arg);
        });
        return this.length;
    };
    LinkedList.prototype.pop = function () {
        if (this.length === 0) {
            return undefined;
        }
        var last = this.tail;
        this.remove(this.length - 1);
        return last.value;
    };
    LinkedList.prototype.unshift = function () {
        var _this = this;
        var args = [];
        for (var _i = 0; _i < arguments.length; _i++) {
            args[_i] = arguments[_i];
        }
        args.reverse();
        /* tslint:disable-next-line: no-any*/
        args.forEach(function (arg) {
            _this.add(arg, 0);
        });
        return this.length;
    };
    LinkedList.prototype.shift = function () {
        if (this.length === 0) {
            return undefined;
        }
        var lastItem = this.head.value;
        this.remove();
        return lastItem;
    };
    /* tslint:disable-next-line: no-any*/
    LinkedList.prototype.forEach = function (fn) {
        var current = this.head;
        for (var index = 0; index < this.length; index++) {
            fn(current.value, index);
            current = current.next;
        }
    };
    LinkedList.prototype.indexOf = function (value) {
        var current = this.head;
        var position = 0;
        for (var index = 0; index < this.length; index++) {
            if (current.value === value) {
                position = index;
                break;
            }
            current = current.next;
        }
        return position;
    };
    /* tslint:disable-next-line: no-any*/
    LinkedList.prototype.some = function (fn) {
        var current = this.head;
        var result = false;
        while (current && !result) {
            if (fn(current.value)) {
                result = true;
                break;
            }
            current = current.next;
        }
        return result;
    };
    /* tslint:disable-next-line: no-any*/
    LinkedList.prototype.every = function (fn) {
        var current = this.head;
        var result = true;
        while (current && result) {
            if (!fn(current.value)) {
                result = false;
            }
            current = current.next;
        }
        return result;
    };
    LinkedList.prototype.toString = function () {
        return '[Linked List]';
    };
    /* tslint:disable-next-line: no-any*/
    LinkedList.prototype.find = function (fn) {
        var current = this.head;
        var result;
        for (var index = 0; index < this.length; index++) {
            if (fn(current.value, index)) {
                result = current.value;
                break;
            }
            current = current.next;
        }
        return result;
    };
    /* tslint:disable-next-line: no-any*/
    LinkedList.prototype.findIndex = function (fn) {
        var current = this.head;
        var result;
        for (var index = 0; index < this.length; index++) {
            if (fn(current.value, index)) {
                result = index;
                break;
            }
            current = current.next;
        }
        return result;
    };
    /* tslint:disable-next-line: no-any*/
    LinkedList.prototype.getNode = function (position) {
        if (this.length === 0 || position < 0 || position >= this.length) {
            throw new Error('Position is out of the list');
        }
        var current = this.head;
        for (var index = 0; index < position; index++) {
            current = current.next;
        }
        return current;
    };
    LinkedList.prototype.createInternalArrayRepresentation = function () {
        /* tslint:disable-next-line: no-any*/
        var outArray = [];
        var current = this.head;
        while (current) {
            outArray.push(current.value);
            current = current.next;
        }
        this.asArray = outArray;
    };
    return LinkedList;
}());
export { LinkedList };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibGlua2VkLWxpc3QuY2xhc3MuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL3V0aWxpdGllcy9saW5rZWQtbGlzdC5jbGFzcy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTtJQUFBO1FBQ0UsV0FBTSxHQUFHLENBQUMsQ0FBQztRQU9ELFlBQU8sR0FBUSxFQUFFLENBQUM7UUFpUjVCLCtCQUErQjtJQUNqQyxDQUFDO0lBaFJDLHdCQUFHLEdBQUgsVUFBSSxRQUFnQjtRQUNsQixJQUFJLElBQUksQ0FBQyxNQUFNLEtBQUssQ0FBQyxJQUFJLFFBQVEsR0FBRyxDQUFDLElBQUksUUFBUSxJQUFJLElBQUksQ0FBQyxNQUFNLEVBQUU7WUFDaEUsT0FBTyxLQUFLLENBQUMsQ0FBQztTQUNmO1FBRUQsSUFBSSxPQUFPLEdBQUcsSUFBSSxDQUFDLElBQUksQ0FBQztRQUV4QixLQUFLLElBQUksS0FBSyxHQUFHLENBQUMsRUFBRSxLQUFLLEdBQUcsUUFBUSxFQUFFLEtBQUssRUFBRSxFQUFFO1lBQzdDLE9BQU8sR0FBRyxPQUFPLENBQUMsSUFBSSxDQUFDO1NBQ3hCO1FBRUQsT0FBTyxPQUFPLENBQUMsS0FBSyxDQUFDO0lBQ3ZCLENBQUM7SUFFRCx3QkFBRyxHQUFILFVBQUksS0FBUSxFQUFFLFFBQThCO1FBQTlCLHlCQUFBLEVBQUEsV0FBbUIsSUFBSSxDQUFDLE1BQU07UUFDMUMsSUFBSSxRQUFRLEdBQUcsQ0FBQyxJQUFJLFFBQVEsR0FBRyxJQUFJLENBQUMsTUFBTSxFQUFFO1lBQzFDLE1BQU0sSUFBSSxLQUFLLENBQUMsNkJBQTZCLENBQUMsQ0FBQztTQUNoRDtRQUVELHFDQUFxQztRQUNyQyxJQUFNLElBQUksR0FBUTtZQUNoQixLQUFLLE9BQUE7WUFDTCxJQUFJLEVBQUUsU0FBUztZQUNmLFFBQVEsRUFBRSxTQUFTO1NBQ3BCLENBQUM7UUFFRixJQUFJLElBQUksQ0FBQyxNQUFN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QztTQUN4QjtRQUVELE9BQU8sTUFBTSxDQUFDO0lBQ2hCLENBQUM7SUFFRCxxQ0FBcUM7SUFDM0IsNEJBQU8sR0FBakIsVUFBa0IsUUFBZ0I7UUFDaEMsSUFBSSxJQUFJLENBQUMsTUFBTSxLQUFLLENBQUMsSUFBSSxRQUFRLEdBQUcsQ0FBQyxJQUFJLFFBQVEsSUFBSSxJQUFJLENBQUMsTUFBTSxFQUFFO1lBQ2hFLE1BQU0sSUFBSSxLQUFLLENBQUMsNkJBQTZCLENBQUMsQ0FBQztTQUNoRDtRQUVELElBQUksT0FBTyxHQUFHLElBQUksQ0FBQyxJQUFJLENBQUM7UUFFeEIsS0FBSyxJQUFJLEtBQUssR0FBRyxDQUFDLEVBQUUsS0FBSyxHQUFHLFFBQVEsRUFBRSxLQUFLLEVBQUUsRUFBRTtZQUM3QyxPQUFPLEdBQUcsT0FBTyxDQUFDLElBQUksQ0FBQztTQUN4QjtRQUVELE9BQU8sT0FBTyxDQUFDO0lBQ2pCLENBQUM7SUFFUyxzREFBaUMsR0FBM0M7UUFDRSxxQ0FBcUM7UUFDckMsSUFBTSxRQUFRLEdBQVUsRUFBRSxDQUFDO1FBQzNCLElBQUksT0FBTyxHQUFHLElBQUksQ0FBQyxJQUFJLENBQUM7UUFFeEIsT0FBTyxPQUFPLEVBQUU7WUFDZCxRQUFRLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxLQUFLLENBQUMsQ0FBQztZQUM3QixPQUFPLEdBQUcsT0FBTyxDQUFDLElBQUksQ0FBQztTQUN4QjtRQUNELElBQUksQ0FBQyxPQUFPLEdBQUcsUUFBUSxDQUFDO0lBQzFCLENBQUM7SUFHSCxpQkFBQztBQUFELENBQUMsQUExUkQsSUEwUkMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgTGlua2VkTGlzdDxUPiB7XG4gIGxlbmd0aCA9IDA7XG4gIC8qIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTogbm8tYW55Ki9cbiAgcHJvdGVjdGVkIGhlYWQ6IGFueTtcbiAgLyogdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOiBuby1hbnkqL1xuICBwcm90ZWN0ZWQgdGFpbDogYW55O1xuICAvKiB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6IG5vLWFueSovXG4gIHByb3RlY3RlZCBjdXJyZW50OiBhbnk7XG4gIHByb3RlY3RlZCBhc0FycmF5OiBUW10gPSBbXTtcblxuICBnZXQocG9zaXRpb246IG51bWJlcikge1xuICAgIGlmICh0aGlzLmxlbmd0aCA9PT0gMCB8fCBwb3NpdGlvbiA8IDAgfHwgcG9zaXRpb24gPj0gdGhpcy5sZW5ndGgpIHtcbiAgICAgIHJldHVybiB2b2lkIDA7XG4gICAgfVxuXG4gICAgbGV0IGN1cnJlbnQgPSB0aGlzLmhlYWQ7XG5cbiAgICBmb3IgKGxldCBpbmRleCA9IDA7IGluZGV4IDwgcG9zaXRpb247IGluZGV4KyspIHtcbiAgICAgIGN1cnJlbnQgPSBjdXJyZW50Lm5leHQ7XG4gICAgfVxuXG4gICAgcmV0dXJuIGN1cnJlbnQudmFsdWU7XG4gIH1cblxuICBhZGQodmFsdWU6IFQsIHBvc2l0aW9uOiBudW1iZXIgPSB0aGlzLmxlbmd0aCk6IHZvaWQge1xuICAgIGlmIChwb3NpdGlvbiA8IDAgfHwgcG9zaXRpb24gPiB0aGlzLmxlbmd0aCkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKCdQb3NpdGlvbiBpcyBvdXQgb2YgdGhlIGxpc3QnKTtcbiAgICB9XG5cbiAgICAvKiB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6IG5vLWFueSovXG4gICAgY29uc3Qgbm9kZTogYW55ID0ge1xuICAgICAgdmFsdWUsXG4gICAgICBuZXh0OiB1bmRlZmluZWQsXG4gICAgICBwcmV2aW91czogdW5kZWZpbmVkXG4gICAgfTtcblxuICAgIGlmICh0aGlzLmxlbmd0aCA9PT0gMCkge1xuICAgICAgdGhpcy5oZWFkID0gbm9kZTtcbiAgICAgIHRoaXMudGFpbCA9IG5vZGU7XG4gICAgICB0aGlzLmN1cnJlbnQgPSBub2RlO1xuICAgIH0gZWxzZSB7XG4gICAgICBpZiAocG9zaXRpb24gPT09IDApIHtcbiAgICAgICAgLy8gZmlyc3Qgbm9kZVxuICAgICAgICBub2RlLm5leHQgPSB0aGlzLmhlYWQ7XG4gICAgICAgIHRoaXMuaGVhZC5wcmV2aW91cyA9IG5vZGU7XG4gICAgICAgIHRoaXMuaGVhZCA9IG5vZGU7XG4gICAgICB9IGVsc2UgaWYgKHBvc2l0aW9uID09PSB0aGlzLmxlbmd0aCkge1xuICAgICAgICAvLyBsYXN0IG5vZGVcbiAgICAgICAgdGhpcy50YWlsLm5leHQgPSBub2RlO1xuICAgICAgICBub2RlLnByZXZpb3VzID0gdGhpcy50YWlsO1xuICAgICAgICB0aGlzLnRhaWwgPSBub2RlO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgLy8gbm9kZSBpbiBtaWRkbGVcbiAgICAgICAgY29uc3QgY3VycmVudFByZXZpb3VzTm9kZSA9IHRoaXMuZ2V0Tm9kZShwb3NpdGlvbiAtIDEpO1xuICAgICAgICBjb25zdCBjdXJyZW50TmV4dE5vZGUgPSBjdXJyZW50UHJldmlvdXNOb2RlLm5leHQ7XG5cbiAgICAgICAgY3VycmVudFByZXZpb3VzTm9kZS5uZXh0ID0gbm9kZTtcbiAgICAgICAgY3VycmVudE5leHROb2RlLnByZXZpb3VzID0gbm9kZTtcblxuICAgICAgICBub2RlLnByZXZpb3VzID0gY3VycmVudFByZXZpb3VzTm9kZTtcbiAgICAgICAgbm9kZS5uZXh0ID0gY3VycmVudE5leHROb2RlO1xuICAgICAgfVxuICAgIH1cbiAgICB0aGlzLmxlbmd0aCsrO1xuICAgIHRoaXMuY3JlYXRlSW50ZXJuYWxBcnJheVJlcHJlc2VudGF0aW9uKCk7XG4gIH1cblxuICByZW1vdmUocG9zaXRpb24gPSAwKTogdm9pZCB7XG4gICAgaWYgKHRoaXMubGVuZ3RoID09PSAwIHx8IHBvc2l0aW9uIDwgMCB8fCBwb3NpdGlvbiA+PSB0aGlzLmxlbmd0aCkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKCdQb3NpdGlvbiBpcyBvdXQgb2YgdGhlIGxpc3QnKTtcbiAgICB9XG5cbiAgICBpZiAocG9zaXRpb24gPT09IDApIHtcbiAgICAgIC8vIGZpcnN0IG5vZGVcbiAgICAgIHRoaXMuaGVhZCA9IHRoaXMuaGVhZC5uZXh0O1xuXG4gICAgICBpZiAodGhpcy5oZWFkKSB7XG4gICAgICAgIC8vIHRoZXJlIGlzIG5vIHNlY29uZCBub2RlXG4gICAgICAgIHRoaXMuaGVhZC5wcmV2aW91cyA9IHVuZGVmaW5lZDtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIC8vIHRoZXJlIGlzIG5vIHNlY29uZCBub2RlXG4gICAgICAgIHRoaXMudGFpbCA9IHVuZGVmaW5lZDtcbiAgICAgIH1cbiAgICB9IGVsc2UgaWYgKHBvc2l0aW9uID09PSB0aGlzLmxlbmd0aCAtIDEpIHtcbiAgICAgIC8vIGxhc3Qgbm9kZVxuICAgICAgdGhpcy50YWlsID0gdGhpcy50YWlsLnByZXZpb3VzO1xuICAgICAgdGhpcy50YWlsLm5leHQgPSB1bmRlZmluZWQ7XG4gICAgfSBlbHNlIHtcbiAgICAgIC8vIG1pZGRsZSBub2RlXG4gICAgICBjb25zdCByZW1vdmVkTm9kZSA9IHRoaXMuZ2V0Tm9kZShwb3NpdGlvbik7XG4gICAgICByZW1vdmVkTm9kZS5uZXh0LnByZXZpb3VzID0gcmVtb3ZlZE5vZGUucHJldmlvdXM7XG4gICAgICByZW1vdmVkTm9kZS5wcmV2aW91cy5uZXh0ID0gcmVtb3ZlZE5vZGUubmV4dDtcbiAgICB9XG5cbiAgICB0aGlzLmxlbmd0aC0tO1xuICAgIHRoaXMuY3JlYXRlSW50ZXJuYWxBcnJheVJlcHJlc2VudGF0aW9uKCk7XG4gIH1cblxuICBzZXQocG9zaXRpb246IG51bWJlciwgdmFsdWU6IFQpOiB2b2lkIHtcbiAgICBpZiAodGhpcy5sZW5ndGggPT09IDAgfHwgcG9zaXRpb24gPCAwIHx8IHBvc2l0aW9uID49IHRoaXMubGVuZ3RoKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoJ1Bvc2l0aW9uIGlzIG91dCBvZiB0aGUgbGlzdCcpO1xuICAgIH1cblxuICAgIGNvbnN0IG5vZGUgPSB0aGlzLmdldE5vZGUocG9zaXRpb24pO1xuICAgIG5vZGUudmFsdWUgPSB2YWx1ZTtcbiAgICB0aGlzLmNyZWF0ZUludGVybmFsQXJyYXlSZXByZXNlbnRhdGlvbigpO1xuICB9XG5cbiAgdG9BcnJheSgpOiBUW10ge1xuICAgIHJldHVybiB0aGlzLmFzQXJyYXk7XG4gIH1cblxuICAvKiB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6IG5vLWFueSovXG4gIGZpbmRBbGwoZm46IGFueSk6IGFueVtdIHtcbiAgICBsZXQgY3VycmVudCA9IHRoaXMuaGVhZDtcbiAgICAvKiB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6IG5vLWFueSovXG4gICAgY29uc3QgcmVzdWx0OiBhbnlbXSA9IFtdO1xuICAgIGZvciAobGV0IGluZGV4ID0gMDsgaW5kZXggPCB0aGlzLmxlbmd0aDsgaW5kZXgrKykge1xuICAgICAgaWYgKGZuKGN1cnJlbnQudmFsdWUsIGluZGV4KSkge1xuICAgICAgICByZXN1bHQucHVzaCh7aW5kZXgsIHZhbHVlOiBjdXJyZW50LnZhbHVlfSk7XG4gICAgICB9XG4gICAgICBjdXJyZW50ID0gY3VycmVudC5uZXh0O1xuICAgIH1cblxuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICAvLyBBcnJheSBtZXRob2RzIG92ZXJyaWRpbmcgc3RhcnRcbiAgcHVzaCguLi5hcmdzOiBUW10pOiBudW1iZXIge1xuICAgIC8qIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTogbm8tYW55Ki9cbiAgICBhcmdzLmZvckVhY2goKGFyZzogYW55KSA9PiB7XG4gICAgICB0aGlzLmFkZChhcmcpO1xuICAgIH0pO1xuXG4gICAgcmV0dXJuIHRoaXMubGVuZ3RoO1xuICB9XG5cbiAgcG9wKCkge1xuICAgIGlmICh0aGlzLmxlbmd0aCA9PT0gMCkge1xuICAgICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgICB9XG4gICAgY29uc3QgbGFzdCA9IHRoaXMudGFpbDtcbiAgICB0aGlzLnJlbW92ZSh0aGlzLmxlbmd0aCAtIDEpO1xuXG4gICAgcmV0dXJuIGxhc3QudmFsdWU7XG4gIH1cblxuICB1bnNoaWZ0KC4uLmFyZ3M6IFRbXSk6IG51bWJlciB7XG4gICAgYXJncy5yZXZlcnNlKCk7XG4gICAgLyogdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOiBuby1hbnkqL1xuICAgIGFyZ3MuZm9yRWFjaCgoYXJnOiBhbnkpID0+IHtcbiAgICAgIHRoaXMuYWRkKGFyZywgMCk7XG4gICAgfSk7XG5cbiAgICByZXR1cm4gdGhpcy5sZW5ndGg7XG4gIH1cblxuICBzaGlmdCgpIHtcbiAgICBpZiAodGhpcy5sZW5ndGggPT09IDApIHtcbiAgICAgIHJldHVybiB1bmRlZmluZWQ7XG4gICAgfVxuICAgIGNvbnN0IGxhc3RJdGVtID0gdGhpcy5oZWFkLnZhbHVlO1xuICAgIHRoaXMucmVtb3ZlKCk7XG5cbiAgICByZXR1cm4gbGFzdEl0ZW07XG4gIH1cblxuICAvKiB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6IG5vLWFueSovXG4gIGZvckVhY2goZm46IGFueSk6IHZvaWQge1xuICAgIGxldCBjdXJyZW50ID0gdGhpcy5oZWFkO1xuICAgIGZvciAobGV0IGluZGV4ID0gMDsgaW5kZXggPCB0aGlzLmxlbmd0aDsgaW5kZXgrKykge1xuICAgICAgZm4oY3VycmVudC52YWx1ZSwgaW5kZXgpO1xuICAgICAgY3VycmVudCA9IGN1cnJlbnQubmV4dDtcbiAgICB9XG4gIH1cblxuICBpbmRleE9mKHZhbHVlOiBUKTogbnVtYmVyIHtcbiAgICBsZXQgY3VycmVudCA9IHRoaXMuaGVhZDtcbiAgICBsZXQgcG9zaXRpb24gPSAwO1xuXG4gICAgZm9yIChsZXQgaW5kZXggPSAwOyBpbmRleCA8IHRoaXMubGVuZ3RoOyBpbmRleCsrKSB7XG4gICAgICBpZiAoY3VycmVudC52YWx1ZSA9PT0gdmFsdWUpIHtcbiAgICAgICAgcG9zaXRpb24gPSBpbmRleDtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjdXJyZW50ID0gY3VycmVudC5uZXh0O1xuICAgIH1cblxuICAgIHJldHVybiBwb3NpdGlvbjtcbiAgfVxuXG4gIC8qIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTogbm8tYW55Ki9cbiAgc29tZShmbjogYW55KTogYm9vbGVhbiB7XG4gICAgbGV0IGN1cnJlbnQgPSB0aGlzLmhlYWQ7XG4gICAgbGV0IHJlc3VsdCA9IGZhbHNlO1xuICAgIHdoaWxlIChjdXJyZW50ICYmICFyZXN1bHQpIHtcbiAgICAgIGlmIChmbihjdXJyZW50LnZhbHVlKSkge1xuICAgICAgICByZXN1bHQgPSB0cnVlO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICAgIGN1cnJlbnQgPSBjdXJyZW50Lm5leHQ7XG4gICAgfVxuXG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxuXG4gIC8qIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTogbm8tYW55Ki9cbiAgZXZlcnkoZm46IGFueSk6IGJvb2xlYW4ge1xuICAgIGxldCBjdXJyZW50ID0gdGhpcy5oZWFkO1xuICAgIGxldCByZXN1bHQgPSB0cnVlO1xuICAgIHdoaWxlIChjdXJyZW50ICYmIHJlc3VsdCkge1xuICAgICAgaWYgKCFmbihjdXJyZW50LnZhbHVlKSkge1xuICAgICAgICByZXN1bHQgPSBmYWxzZTtcbiAgICAgIH1cbiAgICAgIGN1cnJlbnQgPSBjdXJyZW50Lm5leHQ7XG4gICAgfVxuXG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxuXG4gIHRvU3RyaW5nKCk6IHN0cmluZyB7XG4gICAgcmV0dXJuICdbTGlua2VkIExpc3RdJztcbiAgfVxuXG4gIC8qIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTogbm8tYW55Ki9cbiAgZmluZChmbjogYW55KSB7XG4gICAgbGV0IGN1cnJlbnQgPSB0aGlzLmhlYWQ7XG4gICAgbGV0IHJlc3VsdDtcbiAgICBmb3IgKGxldCBpbmRleCA9IDA7IGluZGV4IDwgdGhpcy5sZW5ndGg7IGluZGV4KyspIHtcbiAgICAgIGlmIChmbihjdXJyZW50LnZhbHVlLCBpbmRleCkpIHtcbiAgICAgICAgcmVzdWx0ID0gY3VycmVudC52YWx1ZTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgICBjdXJyZW50ID0gY3VycmVudC5uZXh0O1xuICAgIH1cblxuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICAvKiB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6IG5vLWFueSovXG4gIGZpbmRJbmRleChmbjogYW55KSB7XG4gICAgbGV0IGN1cnJlbnQgPSB0aGlzLmhlYWQ7XG4gICAgbGV0IHJlc3VsdDtcbiAgICBmb3IgKGxldCBpbmRleCA9IDA7IGluZGV4IDwgdGhpcy5sZW5ndGg7IGluZGV4KyspIHtcbiAgICAgIGlmIChmbihjdXJyZW50LnZhbHVlLCBpbmRleCkpIHtcbiAgICAgICAgcmVzdWx0ID0gaW5kZXg7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY3VycmVudCA9IGN1cnJlbnQubmV4dDtcbiAgICB9XG5cbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG5cbiAgLyogdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOiBuby1hbnkqL1xuICBwcm90ZWN0ZWQgZ2V0Tm9kZShwb3NpdGlvbjogbnVtYmVyKTogYW55IHtcbiAgICBpZiAodGhpcy5sZW5ndGggPT09IDAgfHwgcG9zaXRpb24gPCAwIHx8IHBvc2l0aW9uID49IHRoaXMubGVuZ3RoKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoJ1Bvc2l0aW9uIGlzIG91dCBvZiB0aGUgbGlzdCcpO1xuICAgIH1cblxuICAgIGxldCBjdXJyZW50ID0gdGhpcy5oZWFkO1xuXG4gICAgZm9yIChsZXQgaW5kZXggPSAwOyBpbmRleCA8IHBvc2l0aW9uOyBpbmRleCsrKSB7XG4gICAgICBjdXJyZW50ID0gY3VycmVudC5uZXh0O1xuICAgIH1cblxuICAgIHJldHVybiBjdXJyZW50O1xuICB9XG5cbiAgcHJvdGVjdGVkIGNyZWF0ZUludGVybmFsQXJyYXlSZXByZXNlbnRhdGlvbigpOiB2b2lkIHtcbiAgICAvKiB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6IG5vLWFueSovXG4gICAgY29uc3Qgb3V0QXJyYXk6IGFueVtdID0gW107XG4gICAgbGV0IGN1cnJlbnQgPSB0aGlzLmhlYWQ7XG5cbiAgICB3aGlsZSAoY3VycmVudCkge1xuICAgICAgb3V0QXJyYXkucHVzaChjdXJyZW50LnZhbHVlKTtcbiAgICAgIGN1cnJlbnQgPSBjdXJyZW50Lm5leHQ7XG4gICAgfVxuICAgIHRoaXMuYXNBcnJheSA9IG91dEFycmF5O1xuICB9XG5cbiAgLy8gQXJyYXkgbWV0aG9kcyBvdmVycmlkaW5nIEVORFxufVxuIl19