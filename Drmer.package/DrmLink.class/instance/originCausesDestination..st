accessing
originCausesDestination: anObject
	originCausesDestination := anObject.
	self announcer announce: (DrmLinkChangedAnnouncement subject: self)