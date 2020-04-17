

install:
	cp Xresources ~/.Xresources
	cp vimrc ~/.vimrc
	cp screenrc ~/.screenrc
	cp bashrc ~/.bashrc
	cp profile ~/.profile
	cp gtkrc-2.0 ~/.gtkrc-2.0
	rsync -a ./i3/ ~/.config/i3/
	rsync -a ./qt5ct/ ~/.config/qt5ct/
	rsync -a ./gtk-3.0/ ~/.config/gtk-3.0/
	rsync -a ./i3blocks/ ~/.config/i3blocks/
	rsync -a ./dunst/ ~/.config/dunst/


diff:
	diff ~/.Xresources Xresources
	diff ~/.vimrc vimrc
	diff ~/.screenrc screenrc
	diff ~/.bashrc bashrc
	diff ~/.profile profile
	diff ~/.config/i3/ ./i3/
	diff ~/.config/qt5ct/ ./qt5ct/
	diff ~/.config/gtk-3.0/ ./gtk-3.0/
	diff ~/.config/i3blocks/ ./i3blocks/
	diff ~/.config/dunst/ ./dunst/
