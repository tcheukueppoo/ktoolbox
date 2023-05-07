
SCRIPTS   = btw msearch record stamina sussd taski track zdocs
LOCAL_BIN = 

install:
	install -d $(LOCAL_BIN)


uninstall:
	test -d "$(LOCAL_BIN)" && \\
	for S in $(SCRIPTS) \; do \
		test -e "$S" && rm -vf 
	done
