accessing
author: anObject
	author := anObject.
	self announcer announce: (DrmModelChangedAnnouncement subject: self)