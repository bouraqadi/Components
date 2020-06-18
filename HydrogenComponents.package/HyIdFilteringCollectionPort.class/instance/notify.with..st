notifying
notify: id with: arg
	| subPort |
	subPort := subPortsDict at: id ifAbsent: [^self].
	subPort notifyWith: arg.