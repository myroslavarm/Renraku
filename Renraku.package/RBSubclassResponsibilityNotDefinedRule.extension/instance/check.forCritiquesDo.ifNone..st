*renraku
check: aClass forCritiquesDo: aCriticBlock ifNone: alternativeBlock
	| encounteredCritic |
	
	encounteredCritic := false.
	
	(aClass whichSelectorsReferTo: #subclassResponsibility) do:  
		[ :selector | 
		(aClass subclasses do: [ :class | 
				(class subclasses isEmpty and:
				[ (class whichClassIncludesSelector: selector) == aClass ]) ifTrue: [ 
					encounteredCritic := true.
					aCriticBlock cull: (ReMissingMethodCritique
						for: aClass
						by: self
						class: class
						selector: selector)
						beShouldBeImplemented;
						yourself ] ]) ].
	
	encounteredCritic ifFalse: [ alternativeBlock value ]