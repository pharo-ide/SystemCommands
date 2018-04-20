execution
execute
	| text |
	text := (methods collect: [ :each | each displayString ]) joinUsing: String cr.
	
	Clipboard clipboardText: text.
	
	self inform: 'Copied methods:', String cr, text