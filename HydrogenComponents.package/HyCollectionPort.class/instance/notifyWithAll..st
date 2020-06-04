notifying
notifyWithAll: args
	elements do: [ : each | each perform: notificationSelector withArguments: args]