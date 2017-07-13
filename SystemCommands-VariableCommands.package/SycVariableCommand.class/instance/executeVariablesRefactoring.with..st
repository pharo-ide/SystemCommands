execution
executeVariablesRefactoring: variableRefactoringClass with: initBlock
	| refactorings refactoring |
	refactorings := variables collect: [ :eachVar |
		refactoring := eachVar createVariableRefactoring: variableRefactoringClass.
		initBlock cull: refactoring cull: eachVar.
		refactoring].
	refactorings do: #primitiveExecute.
	(ChangesBrowser changes: refactorings) open