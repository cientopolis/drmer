accessing
addSource: anObject
	sources add: anObject.
	self announcer announce: (DrmLinkChangedAnnouncement subject: self)