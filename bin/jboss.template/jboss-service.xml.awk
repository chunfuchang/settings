/<mbean.*code="org.jboss.system.pm.AttributePersistenceService"/ \
|| /<mbean.*code="org.jboss.ejb.plugins.cmp.jdbc.metadata.MetaDataLibrary"/ {
	removeMBean = 1
	print "<!-- Potix: disable"
	print $0
	print "-->"
}

removeMBean != 1 {
	print $0
}

removeMBean == 1 && ( /<\/mbean>/ || /"jboss.jdbc:service=metadata"\/>/ ) {
	removeMBean = 0
}
