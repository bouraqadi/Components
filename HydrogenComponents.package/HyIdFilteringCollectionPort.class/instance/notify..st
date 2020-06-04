notifying
notify: id
	| listeners |
	listeners := elementsDict at: id ifAbsent: [^self].
	listeners do: [: each | each perform: notificationSelector]