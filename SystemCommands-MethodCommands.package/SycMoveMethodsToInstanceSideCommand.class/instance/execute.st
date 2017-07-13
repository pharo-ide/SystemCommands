execution
execute
	
	methods 
		collect: [ :each | RBMoveMethodToClassRefactoring method: each class: each origin instanceSide]
		thenDo: [ :each | each execute ]