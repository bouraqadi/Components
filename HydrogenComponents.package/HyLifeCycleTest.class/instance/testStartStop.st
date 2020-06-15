testing
testStartStop
	self assert: (observer stopCountAt: component) equals: 0.
	component start.
	component stop.
	self assert: component isStopped.
	self deny: component isStarted.
	self assert: (observer stopCountAt: component) equals: 1.
