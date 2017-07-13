execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	targetTag := aToolContext requestSingleMethodTag: 'New tag name'