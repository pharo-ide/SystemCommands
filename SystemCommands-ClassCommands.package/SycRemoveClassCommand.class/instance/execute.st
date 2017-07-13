execution
execute
			
	| refactoring |
	refactoring := RBRemoveClassRefactoring classNames: (classes collect: #name).
	refactoring primitiveExecute.
	(ChangesBrowser changes: {refactoring}) open