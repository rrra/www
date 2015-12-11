#============r=========================================================
# git options & settings
#----------------------------------------------------------------------

# git master branch
MASTER = master

# git binary
GIT = /usr/bin/git

#============r=========================================================
# hugo options & settings
#----------------------------------------------------------------------

# Options
HOPTS = --preserveTaxonomyNames=true

# Interface used by the hugo server. Comment these two lines out to use
# localhost.
BIND = 192.168.1.10
BASE = http://${BIND}

# hugo binary
HUGO = /usr/local/bin/hugo

#============r=========================================================
# rsync options & settings
#----------------------------------------------------------------------

# Target
REMOTE = rrra:www

# Options
ROPTS = -avz --delete-after --exclude=.htaccess

# Remote shell 
SSH = -e'ssh'

# rsync binary
RSYNC = /usr/bin/rsync

#======================================================================
# targets
#----------------------------------------------------------------------

ifdef THEME
HOPTS += -t ${THEME}
endif

SERVER = ${HUGO} server
# Add the server options enabled above
ifdef BIND
SERVER += --bind="${BIND}"
endif
ifdef BASE
SERVER += -b ${BASE}
endif

# Public targets
all: help

clean:
	cd public && rm -rf *

help:
	@echo "clean:   clean the ./public directory"
	@echo "pretest: live test the production branch of the site"
	@echo "test:    live test the currently checked out branch of the site"
	@echo "publish: upload the master branch to the the web-server"

pretest:
	${GIT} checkout ${MASTER}
	${SERVER} -w ${HOPTS}

test:
	${SERVER} -w ${HOPTS}

publish: generate
	${RSYNC} ${ROPTS} ${SSH} public/ ${REMOTE}

# Shortcuts
gen: generate

pre: pretest

pub: publish

# Quasi-private targets (you probably won't call these directly)
generate:
	${GIT} checkout ${MASTER}
	${MAKE} clean
	${HUGO} ${HOPTS}
	${MAKE} perms

perms:
	find public/* -type d | xargs chmod 755
	find public/* -type f | xargs chmod 644
	chmod 755 public

