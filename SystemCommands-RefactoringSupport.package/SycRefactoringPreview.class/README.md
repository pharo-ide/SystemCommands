I am refactoring preview which is created on the instance of CmdCommand which provide refactorings.
Such commands should implemetn method: 

- asRefactorings
It should return collection of refactorings to complete the command.

I was copied from the ChangesBrowser.
But I add extra widget to the view to allow scope refactorings. 
Scope instances should understand two messages: 

- description to be represented in drop down list.
- asRBEnvironment to restrict refactoring instances using RBBrowserEnvironment logic.

Currently only Calypso provide such scopes. 

Also in contrast to ChangesBrowser I do not allow show arbitrary changes. I should always be created on the command:

	SycRefactoringPreview for: aCommand scopes: scopes.

Internal Representation and Key Implementation Points.

    Instance Variables
	changes:		<Object>
	changesTree:		<Object>
	command:		<CmdCommand>
	scopeDropList:		<Object>
	scopes:		<Collection>
	textArea:		<Object>

    Implementation Points