execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	tagName := aToolContext requestSingleMethodTag: 'New protocol name'.
	
	targetClass := self requestClassInContext: aToolContext.
	targetClass := aToolContext currentMetaLevelOf: targetClass