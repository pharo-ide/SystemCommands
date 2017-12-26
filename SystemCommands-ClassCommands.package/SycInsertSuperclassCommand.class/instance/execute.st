execution
execute
	
	| refactoring |
	refactoring := RBAddClassRefactoring
		addClass: newClassName
		superclass: targetClass superclass
		subclasses: {targetClass}
		category: targetClass category.
	refactoring execute