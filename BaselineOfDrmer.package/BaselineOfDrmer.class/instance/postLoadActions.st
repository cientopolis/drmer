baselines
postLoadActions

	GTPlayground
		edit: '"To deploy in debug mode use this lines"

GAFDeployer new adminEmail: ''youremail@yourdomain.com''; 
	database: ''gapafarm'';
	deploy.

"Set enableTestDataLoaders: to true to get a [Load demo data] button."
GAFDeployer enableTestDataLoaders: true.
"Set demoMode: to true to get a Demo Banner."
GAFDeployer demoMode: true.

"Evaluate one of the following to set the target persistency strategy"
GAFStorage inMemory.
GAFStorage mongoLocalAt: ''gapafarm''.

"To deploy to production, in a clear image evaluate"

WAAdmin defaultServerManager adaptors
	do: [ :each | WAAdmin defaultServerManager unregister: each ].
ZnZincServerAdaptor startOn: 8080.

(WAAdmin defaultDispatcher handlers keys copyWithoutAll: #(''files''))
	do: [ :appName |
		WAAdmin defaultDispatcher
			unregister: (WAAdmin defaultDispatcher handlerAt: appName) ].
WAAdmin applicationDefaults
	removeParent: WADevelopmentConfiguration instance.

GAFDeployer new
	adminEmail: ''youremail@yourdomain.com'';
	database: ''gapafarm'';
	deploy.
WAAdmin defaultDispatcher defaultName: ''gaf''.

'
	
	label: 'Deployment scripts'.