"This script builds GTEventRecorderServer that receives collected data."

Gofer it
	smalltalkhubUser: 'Moose' project: 'GToolkit';
	configurationOf: #GTEventRecorderServer;
	loadStable.

Smalltalk saveAs: 'GTEventRecorderServer'.
Smalltalk snapshot: true andQuit: true.
