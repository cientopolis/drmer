examples
figureTwoDotSix
	| builder costOfProduction amountOfProfit timeToMarket link qualityOfProduct customerSatisfaction qualityOfProblemDefinition supportProblemDefinition |
	builder := self new.
	costOfProduction := builder
		factorOnAttribute: 'cost'
		of: 'production'.
	amountOfProfit := builder factorOnAttribute: 'amount' of: 'profit'.
	amountOfProfit isExternal: true.
	builder link: costOfProduction to: amountOfProfit.
	timeToMarket := builder
		factorOnAttribute: 'duration'
		of: 'time-to-market'.
	link := builder link: timeToMarket to: amountOfProfit.
	link
		levelAtOrigin: -1;
		levelAtDestination: 1;
		addSource: (builder assumption: '').
	qualityOfProduct := builder
		factorOnAttribute: 'quality'
		of: 'product'.
	customerSatisfaction := builder
		factorOnAttribute: 'level'
		of: 'customer satisfaction'.
	link := builder link: qualityOfProduct to: customerSatisfaction.
	link
		levelAtOrigin: 1;
		levelAtDestination: 1;
		addSource:
			(builder
				referenceLabeled: '5'
				citation: 'Gomez A. El libro de los sueños (1996).').
	qualityOfProblemDefinition := builder
		factorOnAttribute: 'quality'
		of: 'problem definition'.
	supportProblemDefinition := builder
		support: 'support problem definition'.
	link := builder
		link: supportProblemDefinition
		to: qualityOfProblemDefinition.
	link
		levelAtDestination: 1;
		addSource: (builder assumption: '').
	^ builder model