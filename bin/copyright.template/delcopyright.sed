# delcopyright.sed
# 	sed script used to delete Copyright notes of source files.
# 	It locate the range between {{IS_RIGHT  and }}IS_RIGHT and
# 	clean all text in between
/{{IS_RIGHT/,/}}IS_RIGHT/c\
{{IS_RIGHT\
}}IS_RIGHT
