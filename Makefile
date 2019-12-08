

install:
	cp Xresources ~/.Xresources
	cp vimrc ~/.vimrc
	cp screenrc ~/.screenrc
	cp bashrc ~/.bashrc
	rsync -a ./i3/ ~/.config/i3/	
