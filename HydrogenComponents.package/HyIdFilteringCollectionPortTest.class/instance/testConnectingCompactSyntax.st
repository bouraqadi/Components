running
testConnectingCompactSyntax
	| y x |
	a portA
		notificationSelector: #count:;
		=> {
			#b -> b. 
			#(c d) -> { c. d}.
			#y ->  [: value | y := value ].
		}.
	a portA -@ #x =>  [: value | x := value ].
	a triggerSetCount: 10 id: #b.
	a triggerSetCount: 21 id: #c.
	a triggerSetCount: 22 id: #d.
	a triggerSetCount: 30 id: #x.
	a triggerSetCount: 40 id: #y.
	self assert: x equals: 30.
	self assert: y equals: 40.