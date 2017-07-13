operations
computeArgumentPermutationsFor: modifiedMessageDescription
	^modifiedMessageDescription argumentNames 
		collect: [ :each | argumentNames indexOf: each ]