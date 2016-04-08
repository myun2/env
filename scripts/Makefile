CPPFLAGS = $(CPPFLAGS) -I$(HOME)/include
LDFLAGS  = $(LDFLAGS) -L$(HOME)/lib
LD_LIBRARY_PATH = $(LD_LIBRARY_PATH):$(HOME)/lib

src: ~/src
	mkdir ~/src

libevent: src
	wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz --no-check-certificate
	tar -zxvf libevent-2.0.21-stable.tar.gz
	cd libevent-2.0.21-stable/
	./configure --prefix=$(HOME)
	make install

tmux: libevent
	wget http://downloads.sourceforge.net/project/tmux/tmux/tmux-1.9/tmux-1.9a.tar.gz
	tar -zxvf tmux-1.9a.tar.gz
	cd tmux-1.9a/
	./configure --prefix=$(HOME)
	make install
