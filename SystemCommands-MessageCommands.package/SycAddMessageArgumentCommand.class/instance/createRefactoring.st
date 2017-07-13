execution
createRefactoring

	^RBAddParameterRefactoring
		addParameterToMethod: originalMessage selector
		in: (SycMessageOriginHack of: originalMessage) "look at SycMessageOriginHack comment"
		newSelector: newSelector
		initializer: argumentDefaultValue