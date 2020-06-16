testing
testStopIfOneStopped
	self subjects do: [ : each | each start ].
	subject1 stop.
	self assert: counter startCount equals: 1.
	self assert: counter stopCount equals: 1.