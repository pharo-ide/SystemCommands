instance creation
ofMesageNode: astMessageNode
	^(self fromContextOf: astMessageNode) 
		selector: astMessageNode selector;
		argumentNames: (astMessageNode arguments collect: #formattedCode)