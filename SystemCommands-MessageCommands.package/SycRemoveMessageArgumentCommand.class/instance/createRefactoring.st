execution
createRefactoring

	^RBRemoveParameterRefactoring
		removeParameter: argumentName
		in: (SycMessageOriginHack of: originalMessage) "look at SycMessageOriginHack comment"
		selector: originalMessage selector