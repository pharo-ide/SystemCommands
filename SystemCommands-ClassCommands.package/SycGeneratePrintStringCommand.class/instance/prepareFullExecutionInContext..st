execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	variables := aToolContext 
		requestMultipleVariables: 'Choose variables for print string' 
		from: {targetClass}