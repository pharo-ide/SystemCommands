execution
execute
	
	methods 
		collect: [ :each | RBMoveMethodToClassRefactoring method: each class: each origin classSide]
		thenDo: [ :each | each execute ]