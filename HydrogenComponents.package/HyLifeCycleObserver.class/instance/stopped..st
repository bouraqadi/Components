actions
stopped: anObject
	| oldCount |
	oldCount := self stopCountAt: anObject.
	stoppedDict at: anObject put: oldCount + 1