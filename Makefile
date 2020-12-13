

install:
	cp Xresources ~/.Xresources
	cp vimrc ~/.vimrc
	cp screenrc ~/.screenrc
	cp bashrc ~/.bashrc
	rsync -a ./i3/ ~/.config/i3/	


diff:
	diff Xresources ~/.Xresources
	diff vimrc ~/.vimrc
	diff screenrc ~/.screenrc
	diff bashrc ~/.bashrc
	diff ./i3/config ~/.config/i3/config
