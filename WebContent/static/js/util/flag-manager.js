function FlagManager() {
	this.taskWithTimer = function(key, handler, timeout, whenEnds) {
		if (this[key] && handler) {
			setTimeout(handler(), timeout);
			if (whenEnds) whenEnds();
		}
	}

	this.taskWithLoop = function(key, handler, timeout, whenEnds) {
		if (this[key] && handler) {
			setTimeout(handler(), timeout);
			if (whenEnds) whenEnds();
		}
	}

	this.task = (key, handler) => { if (this[key] && handler) handler() };

	this.check = key => this[key];
	this.lock = key => { this[key] = true };
	this.unlock = key => { this[key] = false };
}