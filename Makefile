PREFIX	=/opt
BINDIR	=${PREFIX}/bin

INSTALL	=install

all::	unscript

ARGS	=test.txt

check::	unscript
	./unscript ${ARGS}

install:: unscript
	${INSTALL} -D -c -m 0555 unscript ${BINDIR}/unscript

uninstall::
	${RM} ${BINDIR}/unscript
