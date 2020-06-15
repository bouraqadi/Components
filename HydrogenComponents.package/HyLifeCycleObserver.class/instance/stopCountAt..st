accessing
stopCountAt: anObject
	^ stoppedDict at: anObject ifAbsent: [ 0 ]