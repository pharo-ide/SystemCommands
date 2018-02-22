I am a base class for commands which modify signature of given message.

My subclasse should implement two methods: 

- createRefactoring 
It should return refactoring instance which will perform actual change.

- resultMessageSelector 
it should return target selector of the message after modification.

Internal Representation and Key Implementation Points.

    Instance Variables
	originalMessage:		<ClyMessageDescription>