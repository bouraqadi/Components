testing
testStart
	self assert: (observer startCountAt: component) equals: 0.
	component start.
	self deny: component isStopped.
	self assert: component isStarted.
	self assert: (observer startCountAt: component) equals: 1.
