actions
started: anObject
	| oldCount |
	oldCount := self startCountAt: anObject.
	startedDict at: anObject put: oldCount + 1