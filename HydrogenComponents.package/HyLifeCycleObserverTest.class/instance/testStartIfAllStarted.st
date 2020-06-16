testing
testStartIfAllStarted
	self subjects do: [ : each | each start ].
	self assert: counter startCount equals: 1.
	self assert: counter stopCount equals: 0.