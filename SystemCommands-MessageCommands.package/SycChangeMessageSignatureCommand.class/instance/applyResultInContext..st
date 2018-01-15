execution
applyResultInContext: aToolContext
	super applyResultInContext: aToolContext.

	aToolContext tool selectMessage: originalMessage withNewSelector: self resultMessageSelector