execution
execute
	
	| refactorings |
	refactorings := classes collect: [ :each | 	RBRealizeClassRefactoring className: each].
		
	refactorings do: [ :each | each primitiveExecute].
	(ChangesBrowser changes: refactorings) open