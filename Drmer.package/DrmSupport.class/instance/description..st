accessing
description: anObject
	description := anObject.
	self announcer announce: (DrmLinkChangedAnnouncement subject: self)