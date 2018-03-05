execution
execute

	context selectedTextInterval ifEmpty: [ 
		context showSourceNode].
	
	super execute