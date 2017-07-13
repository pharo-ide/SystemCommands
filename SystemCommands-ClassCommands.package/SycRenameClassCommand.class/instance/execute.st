execution
execute
	
	| refactoring |
	refactoring := RBRenameClassRefactoring
		rename: targetClass
		to: newName.
	refactoring execute