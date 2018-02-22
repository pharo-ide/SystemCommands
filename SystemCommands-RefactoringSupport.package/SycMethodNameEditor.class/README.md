I am an editor to set the name of a method.
I was copied from OB.

I should be created on the instance of RBMethodName: 

	methodName := RBMethodName selector: selector arguments: argumentNames copy.
	dialog := SycMethodNameEditor openOn: methodName.

I modify given method name instance. When dialog is submitted you can ask new properties: 

	methodName selector.
	methodName arguments

Internal Representation and Key Implementation Points.

    Instance Variables
	argumentIndex:		<Integer>
	labelMorph:		<StringMorph>
	methodName:		<RBMethodName>
	selectorField:		<Object>