private
updateChanges
	| aCompositeChange |
	self generateChanges.
	
	aCompositeChange := RBRefactoryChangeManager changeFactory
		compositeRefactoryChange.
	changes do: [ :each | aCompositeChange addChange: each ].

	changesTree roots: (aCompositeChange whatToDisplayIn: self)