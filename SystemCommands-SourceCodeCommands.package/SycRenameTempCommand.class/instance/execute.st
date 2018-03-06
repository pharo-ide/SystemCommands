execution
execute
	| refactoring |
	refactoring := RBRenameTemporaryRefactoring	
		renameTemporaryFrom: sourceNode sourceInterval
		to: newName
		in: method origin
		selector: method selector.
	
	refactoring execute