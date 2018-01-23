execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	targetTag := aToolContext requestSingleMethodTag: 'New protocol name'