#
# ~/.bash_profile
#
[[ -f ~/.bashrc ]] && . ~/.bashrc

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$HOME/node_modules/.bin:$PATH"
fi


unset MAILCHECK
export LANG="zh_CN.UTF-8"
export EDITOR="vim"
export NODE_PATH="/home/zhangyuanwei/local/doctorjs/lib/jsctags/:$NODE_PATH"
export PATH="$PATH:/home/zhangyuanwei/.gem/ruby/1.9.1/bin"
export PYTHONPATH=$PYTHONPATH:/home/zhangyuanwei/local/ino/lib/python2.7/site-packages
export CLASSPATH=$CLASSPATH:/home/zhangyuanwei/.vim/autoload
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'

function nohup_startx(){
	while ! [ -f /tmp/.X0-lock ]; do
        select=$(LANG=en_US.UTF-8 whiptail --title "Start X" --menu "Choose a session:" 10 60 2 \
            "Xfce4"     "A lightweight desktop environment." \
            "CheomeOS"  "Work primarily with web applications." \
            3>&2 2>&1 1>&3)

		#[[ -f ~/.xsession-errors ]] && mv ~/.xsession-errors ~/.xsession-errors.old
        case "X${select}" in
            XXfce4) 
                #startx startxfce4 >/dev/null 2>~/.xsession-errors
                startx startxfce4
                ;;
            XCheomeOS)
                #startx chromeos >/dev/null 2>~/.xsession-errors
                startx chromeos
                ;;
            *)
                exit
                ;;
        esac
	done;
}

function nohup_fbterm(){
	[[ -z "$DISPLAY" ]] && export DISPLAY=":0"
	while((1));do
		cmatrix -blasu 2 -C red
		[[ -f ~/.fbterm-errors ]] && mv ~/.fbterm-errors ~/.fbterm-errors.old
		fbterm $@ > /dev/null 2>~/.fbterm-errors
		#fbterm $@ >~/.fbterm-errors 2>&1
	done;
}

case "$(tty)" in
	'/dev/tty7')
		nohup_startx
		;;
	'/dev/tty1')
		nohup_fbterm mytmux
		;;
	'/dev/tty2')
        fbset -xres 1680 -yres 1050
        nohup_fbterm -r 1
        ;;
	*)
		;;
esac
