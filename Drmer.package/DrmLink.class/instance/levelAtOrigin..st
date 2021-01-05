accessing
levelAtOrigin: anObject
	levelAtOrigin := anObject.
	self announcer announce: (DrmLinkChangedAnnouncement subject: self)