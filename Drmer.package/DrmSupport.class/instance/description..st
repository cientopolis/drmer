accessing
description: anObject
	description := anObject.
	self announcer announce: (DrmNodeChangedAnnouncement subject: self)