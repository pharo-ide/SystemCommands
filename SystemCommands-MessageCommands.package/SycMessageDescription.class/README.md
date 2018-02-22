I represent message description which includes selector and argument names.

In addition I keep reference to so named contextUser. It is an object which uses given message, which was used to retrieve message instance.
The #contextUser is either a method or RBMessageNode.

To create my instance use following expressions: 

	SycMessageDescription ofMethod: Magnitude >> #between:and:.
	SycMessageDescription ofMessageNode: (SycRenameMessageCommand >> #createRefactoring) ast sendNodes first.

I implement suitable method for commands to request new signature: 

	aMessage requestNewSignature

It returnes new message instance.

Also I provide a method to compute argument permutations comparing to another message: 

	aMessage1 computeArgumentPermutationsFor: aMessage2
	
It is required for rename method refactoring.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	argumentNames:		<Array of<String>>
	contextUser:		<Object>
	selector:		<Symbol>