testing
canBeExecutedInContext: aToolContext
	^(super canBeExecutedInContext: aToolContext)
		and: [ aToolContext lastSelectedMessage argumentNames notEmpty]