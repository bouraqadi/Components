actions
started: anObject
	stoppedSubjects remove: anObject.
	stoppedSubjects isEmpty ifFalse: [^self].
	startPort notify.