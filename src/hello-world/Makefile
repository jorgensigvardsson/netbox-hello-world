CFLAGS += -Wall -Wextra -Werror -Wno-unused-parameter -Wno-strict-aliasing
# Needed for sendmmsg(2)
CPPFLAGS += -D_GNU_SOURCE

all: hello-world

hello-world: main.o
	$(CC) -o hello-world main.o

install:
	@mkdir -p \
		$(DESTDIR)/$(PREFIX)/sbin/
	@cp hello-world $(DESTDIR)/$(PREFIX)/sbin/
