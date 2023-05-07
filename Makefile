SCRIPTS != ls bin/*

SH_HOME != echo $${HOME%/}
HOME ?= $(SH_HOME)

LOCAL = $(HOME)/.local
LOCAL_BIN := $(LOCAL)/bin

USER != echo $$USER
GROUP ?= $(USER)

install: $(SCRIPTS)
	install -d $(LOCAL_BIN)
	install -m 744 -o $(USER) -g $(GROUP) -t $(LOCAL_BIN) $(SCRIPTS)

uninstall:
	@for S in $(SCRIPTS) ; do \
		rm -fv "$(LOCAL)/$$S"; \
	done
