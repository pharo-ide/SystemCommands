execution
requestClassInContext: aToolContext
	| classes |
	classes := aToolContext selectedClasses.
	classes size = 1 ifTrue: [ ^classes first ].
	
	^aToolContext  
		requestSingleClass: 'In what class you want a protocol?' 
		from: classes