execution
execute
	| refactoring |
	refactoring := RBInlineMethodRefactoring	
		inline: sourceNode sourceInterval
		inMethod: method selector
		forClass: method origin.
	
	refactoring execute