testing
testStartStop
	component start.
	component stop.
	self assert: component isStopped.
	self deny: component isStarted.