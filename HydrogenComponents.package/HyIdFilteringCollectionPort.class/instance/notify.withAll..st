notifying
notify: id withAll: args
	| subPort |
	subPort := subPortsDict at: id ifAbsent: [^self].
	subPort notifyWithAll: args