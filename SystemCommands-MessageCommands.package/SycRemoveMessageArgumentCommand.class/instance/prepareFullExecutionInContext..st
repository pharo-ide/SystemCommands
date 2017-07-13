execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	argumentName := originalMessage argumentNames size = 1 
		ifTrue: [ originalMessage argumentNames first]
		ifFalse: [ UIManager default
						chooseFrom: originalMessage argumentNames 
						values: originalMessage argumentNames 
						message: 'Choose an argument to remove:'].
					
	(originalMessage argumentNames includes: argumentName) 
		ifFalse: [ CmdCommandAborted signal ].