notifying
notify: id withAll: args
	| listeners |
	listeners := elementsDict at: id ifAbsent: [^self].
	listeners do: [: each | each perform: notificationSelector withArguments: args]