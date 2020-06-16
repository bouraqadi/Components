testing
testStart
	self assert: counter startCount equals: 0.
	component start.
	self deny: component isStopped.
	self assert: component isStarted.
	self assert: counter startCount equals: 1.
