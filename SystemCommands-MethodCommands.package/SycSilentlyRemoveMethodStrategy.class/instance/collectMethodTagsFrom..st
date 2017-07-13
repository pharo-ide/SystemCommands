removing
collectMethodTagsFrom: methods
	"It will return map class->tags where tags are releated to given methods"
	| result tags |
	result := IdentityDictionary new.
	methods do: [ :each | 
		tags := result at: each origin ifAbsentPut: [IdentitySet new].
		tags addAll: each tags].
	^result