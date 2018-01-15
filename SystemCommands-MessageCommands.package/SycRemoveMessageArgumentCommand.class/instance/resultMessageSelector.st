execution
resultMessageSelector
	| argIndex keywords |
	argIndex := originalMessage argumentNames indexOf: argumentName.
	keywords := originalMessage selector keywords asOrderedCollection.
	keywords size = 1
		ifTrue: [ ^ (keywords first copyWithout: $:) asSymbol ].
	keywords removeAt: argIndex.
	^(keywords joinUsing: '') asSymbol