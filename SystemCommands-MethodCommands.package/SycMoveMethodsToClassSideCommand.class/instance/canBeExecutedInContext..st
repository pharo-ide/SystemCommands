testing
canBeExecutedInContext: aToolContext
	^(super canBeExecutedInContext: aToolContext)
		and: [ aToolContext isInstanceSideMethodSelected ]