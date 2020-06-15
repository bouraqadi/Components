living
start
	isStarted ifTrue: [ ^self ].
	isStarted := true.
	self basicStart.
	startPort notifyWith: self.