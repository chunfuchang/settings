# inscopyright.sed
# 	sed script used to insert Copyright notes of source files.
# 	It locate the range between {{IS_RIGHT  and }}IS_RIGHT and
# 	insert texts in between
/{{IS_RIGHT/r /home/bin/script/license.mak.txt
