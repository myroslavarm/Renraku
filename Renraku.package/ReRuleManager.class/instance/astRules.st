accessing
astRules

	astRules ifNil: [ self initializeRules ].
	
	^ astRules