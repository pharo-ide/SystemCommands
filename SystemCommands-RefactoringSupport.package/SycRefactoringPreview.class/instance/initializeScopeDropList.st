initialization
initializeScopeDropList
	scopeDropList
		displayBlock: [ :scope | scope description capitalized ];
		whenSelectedItemChanged: [ :scope | 
			scope ifNotNil: [self updateChanges] ].