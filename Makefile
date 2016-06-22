SHELL := /bin/bash
export SHELLOPTS := errexit:pipefail
#.SHELLFLAGS = -e -o pipefail -c

pipe:
	perl -e 'exit 1' | echo pipe

compound:
	perl -e 'exit 1'; echo compound

subshell-pipe:
	(perl -e 'exit 1' | echo subshell pipe)

subshell-compound:
	(perl -e 'exit 1'; echo subshell compound)

subshell-subst:
	echo $$(echo subshell; exit 1)
