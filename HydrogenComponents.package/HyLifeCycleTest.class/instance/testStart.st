testing
testStart
	component start.
	self deny: component isStopped.
	self assert: component isStarted.