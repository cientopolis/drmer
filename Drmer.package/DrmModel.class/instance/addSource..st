accessing
addSource: aSource
	sources add: aSource.
	self announcer announce: (DrmModelChangedAnnouncement subject: self)