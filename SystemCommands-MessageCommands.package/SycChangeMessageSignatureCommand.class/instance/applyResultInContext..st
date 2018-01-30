execution
applyResultInContext: aToolContext
	super applyResultInContext: aToolContext.

	aToolContext showMessage: originalMessage renamedTo: self resultMessageSelector asSymbol