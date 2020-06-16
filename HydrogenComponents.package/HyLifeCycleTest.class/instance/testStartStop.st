testing
testStartStop
	self assert: counter startCount equals: 0.
	component start.
	component stop.
	self assert: component isStopped.
	self deny: component isStarted.
	self assert: counter startCount equals: 1.
