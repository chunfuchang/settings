/param-name>dirAllowed</ {
	dirAllowedFound = 1
}
dirAllowedFound == 1 && /param-value>/ {
	print "<!--"
	dirAllowedFound = 2
}

/param-name>logVerbosityLevel/ {
	logVerbosityLevelFound = 1
}
logVerbosityLevelFound == 1 && /param-value>/ {
	print "<!--"
	logVerbosityLevelFound = 2
}

{
	print $0
}

dirAllowedFound == 2 {
	print "-->"
	print "<param-value>false</param-value>"
	dirAllowedFound = 0
}

logVerbosityLevelFound == 2 {
	print "-->"
	print "<param-value>INFORMATION</param-value>"
	logVerbosityLevelFound = 0
}
