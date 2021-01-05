accessing
levelAtDestination: anObject
	levelAtDestination := anObject.
	self announcer announce: (DrmLinkChangedAnnouncement subject: self)