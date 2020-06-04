connecting
addAll: newElements id: id
	(self listenersAt: id) addAll: newElements.
