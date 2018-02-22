instance creation
ofMessageNode: astMessageNode
	^(self fromContextOf: astMessageNode) 
		selector: astMessageNode selector;
		argumentNames: (astMessageNode arguments collect: #formattedCode)