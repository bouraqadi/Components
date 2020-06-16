actions
stopped: anObject
	stoppedSubjects add: anObject.
	stoppedSubjects size = 1 ifFalse: [ ^self ].
	stopPort notifyWith: self.