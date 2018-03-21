execution
asRefactorings

	^{
		RBGenerateEqualHashRefactoring 
			className: targetClass name
			variables: (variables collect: [:each | each name])
	}