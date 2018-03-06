execution
execute
	| assignment refactoring |
	assignment := sourceNode methodNode assignmentNodes 
		detect: [:each | each variable = sourceNode ].

	refactoring := RBInlineTemporaryRefactoring	
		inline: assignment sourceInterval
		from: method selector
		in: method origin.
	refactoring execute