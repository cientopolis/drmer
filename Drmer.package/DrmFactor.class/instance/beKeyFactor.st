role
beKeyFactor 
	role := #keyFactor.
	self announcer announce: (DrmNodeChangedAnnouncement subject: self)