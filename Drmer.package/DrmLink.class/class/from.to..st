instance creation
from: originFactor to: destinationFactor
	^ self new
		origin: originFactor;
		destination: destinationFactor;
		originCausesDestination: true;
		yourself