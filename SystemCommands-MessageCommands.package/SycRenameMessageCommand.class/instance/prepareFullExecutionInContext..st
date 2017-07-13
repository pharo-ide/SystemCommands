execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.

	newSignature := originalMessage requestNewSignature.
	
