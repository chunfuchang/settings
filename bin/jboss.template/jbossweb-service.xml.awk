/Configure.*org.mortbay.jetty.Server/ {
	configFound = 1
}

configFound == 1 && /<\/Configure>/ {
	configFound = 0
	print "<Call name=\"addContext\">"
	print "\t<Arg>"
	print "\t\t<New class=\"org.mortbay.http.HttpContext\">"
	print "\t\t\t<Set name=\"ContextPath\"><SystemProperty name=\"com.potix.i3.web.extern.context\" default=\"/\"/></Set>"
	print "\t\t\t<Set name=\"ResourceBase\"><SystemProperty name=\"com.potix.i3.web.extern.path\" default=\"www\"/></Set>"
	print "\t\t\t<Call name=\"addHandler\">"
	print "\t\t\t\t<Arg><New class=\"org.mortbay.http.handler.ResourceHandler\"/></Arg>"
	print "\t\t\t</Call>"
	print "\t\t</New>"
	print "\t</Arg>"
	print "</Call>"
}

/<!--/ {
	inComment = 1
}

/name="jetty.port"/ {
	noListener = 1
}
noListener == 1 && inComment != 1 && /<Call name="addListener">/ {
	print "<!--"
	callFound = 1
}
inComment != 1 && /<Set name="RequestLog">/ {
	print "<!--"
	setFound = 1
}

/port 8[48]43/ {
	sslFound = 1;
}
sslFound == 1 && inComment == 1 && /<Call.*addListener/ {
	print "-->"
}
sslFound == 1 && /name="Password"/ {
	print "<!--"
}

{
	print $0
}

callFound == 1 && /<\/Call>/ {
	print "-->"
	callFound = 0
}
setFound == 1 && /[ \t]<\/Set>/ {
	print "-->"
	setFound = 0
}

sslFound == 1 && inComment == 1 && /<\/Call>/ {
	print "<!--"
	sslFound = 0
}
sslFound == 1 && /name="KeyPassword"/ {
	print "-->"
}

/-->/ {
	inComment = 0
}
