notifying
notifyWith: arg
	elements do: [ : each | each perform: notificationSelector with: arg]