baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self
				seaside: spec;
				bootstrap4: spec;
				voyage: spec;
				neoCSV: spec;
				neoJSON: spec.
			spec
				package: 'Drmer'
				with: [ spec requires: #('Seaside3' 'Bootstrap4-Core' 'Voyage' 'NeoCSV') ].
			spec postLoadDoIt: #postLoadActions ]