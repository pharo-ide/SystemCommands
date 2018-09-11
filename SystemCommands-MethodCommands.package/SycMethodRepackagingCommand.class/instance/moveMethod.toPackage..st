execution
moveMethod: aMethod toPackage: aPackage
	| existingPackage wasExtension willBeExtension |

	existingPackage := aMethod package.
	existingPackage == aPackage ifTrue: [ ^self ].
	wasExtension := aMethod isExtension.	
	willBeExtension := aPackage ~~ aMethod origin package. 
	
	aPackage addMethod: aMethod.	
	
	willBeExtension ifTrue: [ aMethod tagWith: ('*', aPackage name) asSymbol].
	wasExtension ifTrue: [aMethod untagFrom: ('*', existingPackage name) asSymbol]