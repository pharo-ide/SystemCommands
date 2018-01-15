private
updateChanges
	| aCompositeChange |
	self generateChanges.
	aCompositeChange := RBCompositeRefactoryChange new.
	changes do: [:each | aCompositeChange addChange: each ].
	
	changesTree roots: (aCompositeChange whatToDisplayIn: self).
	changesTree selectAll