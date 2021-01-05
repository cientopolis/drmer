accessing
attribute: anObject
	attribute := anObject.
	self announcer announce: (DrmNodeChangedAnnouncement subject: self).