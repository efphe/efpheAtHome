adir=`pwd`
gconfig:
	if test ! -d ~/.config; then \
	  mkdir ~/.config; \
	fi;
openbox:
	make gconfig
	if test -f ~/.config/openbox; \
	  then rm ~/.config/openbox; \
	fi; 
	ln -s $(shell pwd)/.config/openbox ~/.config/openbox
conky:
	if test -f ~/.conkyrc;then \
	  rm ~/.conkyrc; \
	fi;
	ln -s $(shell pwd)/.conkyrc ~/.conkyrc
tint2:
	make gconfig
	if [ -f ~/.config/tint2 ]; \
	  then rm ~/.config/tint2; \
	fi;
	ln -s $(shell pwd)/.config/tint2 ~/.config/tint2
