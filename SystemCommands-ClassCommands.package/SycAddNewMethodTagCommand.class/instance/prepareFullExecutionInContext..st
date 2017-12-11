execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	tagName := aToolContext requestSingleMethodTag: 'New protocol name'.
	(tagName beginsWith: '*') ifTrue: [ 
		self inform: 'Star is forbidden for protocol name. You can specify package in method editor using status bar checkbox'.
		^CmdCommandAborted signal].
	
	targetClass := self requestClassInContext: aToolContext.
	targetClass := aToolContext currentMetaLevelOf: targetClass