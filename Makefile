

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
	rsync -a ./nvim_config/ ~/.config/nvim/
	rsync -a ./nvim_local/ ~/.config/nvim/
	rsync -a ./vim/autoload/plug.vim ~/.vim/autoload/plug.vim

#	rsync -a ./nvim_local/shada/main.shada
#	rsync -a ./nvim_local/site/autoload/plug.vim


diff:
	diff ~/.Xresources Xresources
	diff ~/.vimrc vimrc
	diff ~/.screenrc screenrc
	diff ~/.bashrc bashrc
	diff ~/.profile profile
	diff -r ~/.config/i3/ ./i3/
	diff -r ~/.config/qt5ct/ ./qt5ct/
	diff -r ~/.config/gtk-3.0/ ./gtk-3.0/
	diff -r ~/.config/i3blocks/ ./i3blocks/
	diff -r ~/.config/dunst/ ./dunst/
	diff -r ~/.config/nvim/./nvim_config/
	diff -r ~/.config/nvim/ ./nvim_local/ 
	diff -r ~/.vim/autoload/plug.vim ./vim/autoload/plug.vim
