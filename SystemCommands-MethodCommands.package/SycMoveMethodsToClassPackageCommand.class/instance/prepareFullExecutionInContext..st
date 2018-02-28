execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	targetTagName := aToolContext requestSingleMethodTag: 'Choose protocol for methods'