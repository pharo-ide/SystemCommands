execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	removeStrategy := aToolContext requestRemoveMethodStrategyFor: methods