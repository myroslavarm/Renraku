initialization
initializeReports
	| entityValidationBlock |
	
	entityValidationBlock := [ :entity |
		reports addAll: (self rules collect: [ :rule |
			RePort
				rule: rule
				entity: entity ]) ].

	self classes
		do: entityValidationBlock
		displayingProgress: 'Checking classes'.

	self methods
		do: entityValidationBlock
		displayingProgress: 'Checking methods'