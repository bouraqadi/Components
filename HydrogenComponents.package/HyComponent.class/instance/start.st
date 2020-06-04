living
start
	isStarted ifTrue: [ ^self ].
	isStarted := true.
	self basicStart