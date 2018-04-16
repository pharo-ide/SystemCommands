execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	variables := aToolContext 
		requestMultipleVariables: 'Choose variables for equality' 
		from: {targetClass}