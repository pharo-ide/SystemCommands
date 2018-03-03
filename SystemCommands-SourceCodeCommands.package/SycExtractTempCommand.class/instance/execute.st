execution
execute
	| refactoring |
	refactoring := RBExtractToTemporaryRefactoring	
		extract: sourceNode sourceInterval
		to: tempName
		from: method selector
		in: method origin.
	
	refactoring execute