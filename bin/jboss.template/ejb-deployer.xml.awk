/<mbean.*org.jboss.ejb.*DatabasePersistencePolicy/ {
	removeMBean = 1
	print "<!-- Potix: disable"
	print $0
	print "-->"
}

removeMBean != 1 {
	print $0
}

removeMBean == 1 && /<\/mbean>/ {
	removeMBean = 0
}
