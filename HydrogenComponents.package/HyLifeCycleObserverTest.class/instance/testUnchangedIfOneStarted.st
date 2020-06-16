testing
testUnchangedIfOneStarted
	subject1 start.
	self assert: counter startCount equals: 0.
	self assert: counter stopCount equals: 0.