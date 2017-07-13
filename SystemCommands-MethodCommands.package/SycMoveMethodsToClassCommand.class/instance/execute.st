execution
execute
	
	methods 
		collect: [ :each | RBMoveMethodToClassRefactoring method: each class: targetClass]
		thenDo: [ :each | each execute ]