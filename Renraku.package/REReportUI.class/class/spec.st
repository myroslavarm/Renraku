as yet unclassified
spec
	<spec:#default>
	
	^SpecLayout composed
		newRow: [ :aRow |
			aRow
				newColumn: [ :aCol |
					aCol
						add: #importantCheckBox height: 20;
						add: #list ];
				addSplitter;
				newColumn: [ :aCol |
					aCol
						add: #rationale height: 40;
						add: #pane ] ]