ifeq ($(shell uname),Darwin)
prefix	?= $(HOME)/Sites
else
prefix	?= $(HOME)/public_html
endif

install:
	jekyll "$(prefix)"
	"$(prefix)"/scripts/create-md5sums

all: install

.PHONY: install