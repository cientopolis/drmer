updating
theRealData
	| model |
	model := self exampleModel.
	^ String
		streamContents: [ :strm | 
			strm nextPutAll: 'var nodeDataArray = ['.
			model factors
				do: [ :factor | strm nextPutAll: factor asJson ]
				separatedBy: [ strm nextPutAll: ', ' ].
			strm
				nextPutAll: '];';
				cr.
			strm nextPutAll: 'var linkDataArray = ['.
			model statements
				do: [ :statement | strm nextPutAll: statement asJson ]
				separatedBy: [ strm nextPutAll: ', ' ].
			strm nextPutAll: '	 ]' ]