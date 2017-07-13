execution
execute
	| refactoring |
	
	refactoring := variable createVariableRefactoring: RBRenameInstanceVariableRefactoring.
	refactoring	newName: newName asSymbol.
		
	refactoring execute