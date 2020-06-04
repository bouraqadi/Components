actions
triggerAdd: delta1 to: delta2 id: id
	port notify: id withAll: { delta1. delta2 }