specs
defaultSpec
	<spec>
	^ SpecLayout composed
		newColumn: [ :column1 | 
			column1
				newRow: [ :column2 | column2 add: #changesTree ];
				newRow: [ :column2 | column2 add: #scopeDropList ] height: 30;
				addSplitter;
				add: #textArea ]