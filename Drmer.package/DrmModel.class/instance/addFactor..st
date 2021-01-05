initialization
addFactor: aFactor
	factors add: aFactor.
	self announcer announce: (DrmNodeAddedAnnouncement subject: aFactor).
	^aFactor 