execution
moveMethod: aMethod toPackage: aPackage
	| existingPackage wasExtension willBeExtension |

	existingPackage := aMethod package.
	existingPackage == aPackage ifTrue: [ ^self ].
	wasExtension := aMethod isExtension.	
	willBeExtension := aPackage ~~ aMethod origin package. 
	
	aPackage addMethod: aMethod.	
	
	wasExtension ifTrue: [aMethod untagFrom: ('*', existingPackage name) asSymbol].
	willBeExtension ifTrue: [ aMethod tagWith: ('*', aPackage name) asSymbol]