role
beExternal 
	role := #external.
	self announcer announce: (DrmNodeChangedAnnouncement subject: self)