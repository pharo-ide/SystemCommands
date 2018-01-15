execution
createRefactorings: variableRefactoringClass using: initBlock
	| refactoring |
	^variables collect: [ :eachVar |
		refactoring := eachVar createVariableRefactoring: variableRefactoringClass.
		initBlock cull: refactoring cull: eachVar.
		refactoring]