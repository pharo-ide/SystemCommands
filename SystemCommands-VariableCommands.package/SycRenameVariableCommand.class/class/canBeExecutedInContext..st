testing
canBeExecutedInContext: aToolContext
	^aToolContext isVariableSelected and: [ aToolContext isGlobalVariableSelected not ]