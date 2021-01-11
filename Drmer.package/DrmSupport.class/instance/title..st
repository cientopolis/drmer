accessing
title: anObject
	title := anObject.
	self announcer announce: (DrmNodeChangedAnnouncement subject: self)