living
stop
	isStarted ifFalse: [ ^self ].
	isStarted := false.
	self basicStop.