execution
canBeExecutedInContext: aSourceCodeContext
	super canBeExecutedInContext: aSourceCodeContext.
	
	^aSourceCodeContext isMethodSelected not 