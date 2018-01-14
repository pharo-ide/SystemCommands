specs
defaultSpec2
	<spec>
	^ SpecLayout composed
		newColumn: [ :column1 | 
			column1
				newColumn: [ :column2 | column2 add: #changesTree ];
				newColumn: [ :column2 | column2 add: #scopeDropList ];
				addSplitter;
				add: #textArea ]