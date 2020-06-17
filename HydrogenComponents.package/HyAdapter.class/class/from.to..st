instance creation
from: aPort to: aValuable
	| newInstance |
	newInstance := self target: aValuable.
	aPort => newInstance.
	^newInstance