execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	classes := classes collect: [:each | aToolContext resolveCurrentClassSideOf: each]