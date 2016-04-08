CPPFLAGS += -I$(HOME)/include
LDFLAGS  += -L$(HOME)/lib
LD_LIBRARY_PATH += $(HOME)/lib
export

DIST = tmux
VERSION = 1.9a
NAME = $(DIST)-$(VERSION)

TARBALL_URL = http://downloads.sourceforge.net/project/tmux/tmux/tmux-1.9/$(NAME).tar.gz
TARBALL = $(NAME).tar.gz
SRCDIR = $(NAME)
BIN = $(SRCDIR)/tmux

all: $(BIN)
$(TARBALL):
	wget $(TARBALL_URL) --no-check-certificate

$(SRCDIR): $(TARBALL)
	tar -zxvf $(TARBALL)

$(SRCDIR)/Makefile: $(SRCDIR)
	echo $$LD_LIBRARY_PATH
	cd $(SRCDIR) && ./configure --prefix=$(HOME)

$(BIN): $(SRCDIR)/Makefile
	cd $(SRCDIR) && make install

clean:
	rm -rf $(SRCDIR)
	rm $(TARBALL)
