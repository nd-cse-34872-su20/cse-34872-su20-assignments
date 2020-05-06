BRANCH?=	$(shell git rev-parse --abbrev-ref HEAD)

all:

test:		
	@[ "$(BRANCH)" = "master" ] \
	    || { (echo "$(BRANCH)" | grep -q reading) && .scripts/submit.py; } \
	    || { (echo "$(BRANCH)" | grep -q challenge) && .scripts/submit.py; } \
	    || { [ -f "$(BRANCH)/Makefile" ] && (echo "Testing $(BRANCH)" && cd $(BRANCH) && make -s test) }
