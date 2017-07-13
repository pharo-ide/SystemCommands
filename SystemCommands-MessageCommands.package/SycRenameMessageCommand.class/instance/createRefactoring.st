execution
createRefactoring

	^RBRenameMethodRefactoring
		renameMethod: originalMessage selector 
		in: (SycMessageOriginHack of: originalMessage) "look at SycMessageOriginHack comment"
		to: newSignature selector 
		permutation: (originalMessage computeArgumentPermutationsFor: newSignature)