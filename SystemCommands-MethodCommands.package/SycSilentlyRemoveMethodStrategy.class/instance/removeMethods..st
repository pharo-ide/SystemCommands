removing
removeMethods: methods
	
	| methodTags |
	methodTags := self collectMethodTagsFrom: methods. "we will remove empty tags of removed methods".
	
	methods do: [ :each | each removeFromSystem ].
	
	methodTags keysAndValuesDo: [:class :tags | tags do: [ :eachTag | 
		(class methodsTaggedWith: eachTag) 
			ifEmpty: [class removeMethodTag: eachTag] ]]