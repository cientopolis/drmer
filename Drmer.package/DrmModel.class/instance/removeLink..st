links
removeLink: aLink
	links remove: aLink.
   self announcer announce: (DrmLinkRemovedAnnouncement subject: aLink).
	^ aLink