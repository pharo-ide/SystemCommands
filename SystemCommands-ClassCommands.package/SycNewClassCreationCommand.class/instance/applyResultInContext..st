execution
applyResultInContext: aToolContext
	
	| newClass |
	newClass := aToolContext system classNamed: newClassName.
	
	aToolContext showClass: newClass