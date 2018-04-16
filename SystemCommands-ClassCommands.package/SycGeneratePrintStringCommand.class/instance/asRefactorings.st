execution
asRefactorings

	^{
		RBGeneratePrintStringRefactoring 
			className: targetClass name
			variables: (variables collect: [:each | each name])
	}