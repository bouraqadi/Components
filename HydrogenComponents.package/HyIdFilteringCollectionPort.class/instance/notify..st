notifying
notify: id
	| subPort |
	subPort := subPortsDict at: id ifAbsent: [^self].
	subPort notify