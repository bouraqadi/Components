connecting
disconnectBlock: aBlockClosure

	| adapterToRemove |
	adapterToRemove := elements
		                   detect: [ :each | 
		                   each isAdapterFor: aBlockClosure ]
		                   ifNone: [ ^ self ].
	self remove: adapterToRemove