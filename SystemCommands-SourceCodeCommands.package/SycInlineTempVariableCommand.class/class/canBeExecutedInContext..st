execution
canBeExecutedInContext: aSourceCodeContext
	super canBeExecutedInContext: aSourceCodeContext.
	
	^aSourceCodeContext isTempVariableSelected  