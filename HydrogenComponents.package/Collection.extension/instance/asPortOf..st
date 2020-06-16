*HydrogenComponents
asPortOf: anObject
	^self collect: [: each | each asPortOf: anObject]