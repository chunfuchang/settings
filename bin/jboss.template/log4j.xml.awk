/<appender.*appender.DailyRollingFileAppender/ {
	found = 1;
}
/<appender.*log4j.FileAppender/ {
	found = 1;
}

/<\/appender>/ {
	found = 0;
}

{
	print $0
}

found == 1 && /<errorHandler/ {
	print "\t<param name=\"Threshold\" value=\"INFO\"/>"
}
