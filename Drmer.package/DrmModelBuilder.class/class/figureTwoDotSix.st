examples
figureTwoDotSix
	| builder costOfProduction amountOfProfit timeToMarket link |
	builder := DrmModelBuilder new.
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
	builder model