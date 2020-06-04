notifying
notify: id with: arg
	| listeners |
	listeners := elementsDict at: id ifAbsent: [^self].
	listeners do: [: each | each perform: notificationSelector with: arg]