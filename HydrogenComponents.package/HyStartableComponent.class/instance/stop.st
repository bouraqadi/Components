living
stop
	isStarted ifFalse: [ ^self ].
	isStarted := false.
	self basicStop.
	stopPort notifyWith: self.