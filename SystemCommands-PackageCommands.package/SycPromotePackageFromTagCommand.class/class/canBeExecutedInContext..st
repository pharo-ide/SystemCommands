testing
canBeExecutedInContext: aToolContext
	^aToolContext isPackageSelected and: [aToolContext isClassTagSelected]