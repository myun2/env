CPPFLAGS = $(CPPFLAGS) -I$(HOME)/include
LDFLAGS  = $(LDFLAGS) -L$(HOME)/lib
LD_LIBRARY_PATH = $(LD_LIBRARY_PATH):$(HOME)/lib

DIST = libevent
VERSION = 2.0.21-stable
NAME = $(DIST)-$(VERSION)

TARBALL_URL = https://github.com/downloads/libevent/libevent/$(NAME).tar.gz
TARBALL = $(NAME).tar.gz
SRCDIR = $(NAME)
LIB = $(SRCDIR)/libevent.la

all: $(LIB)
$(TARBALL):
	wget $(TARBALL_URL) --no-check-certificate

$(SRCDIR): $(TARBALL)
	tar -zxvf $(TARBALL)

$(SRCDIR)/Makefile: $(SRCDIR)
	cd $(SRCDIR) && ./configure --prefix=$(HOME)

$(LIB): $(SRCDIR)/Makefile
	cd $(SRCDIR) && make install

clean:
	rm -rf $(SRCDIR)
	rm $(TARBALL)
