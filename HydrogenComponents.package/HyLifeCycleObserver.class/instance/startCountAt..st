accessing
startCountAt: anObject
	^ startedDict at: anObject ifAbsent: [ 0 ]