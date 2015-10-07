#!/bin/bash

##fbterm
#if [ -n "$FBTERM" ];then
#    alias tmux='TERM=fbterm tmux'
#	alias vi='TERM=fbterm vi';
##	alias elinks='TERM=fbterm elinks';
##alias htop='TERM=fbterm vi';
#fi

#alias svnci='svn ci -m "by `whoami` `date "+%Y-%m-%d %H:%M"`"'
alias svnci='svn ci -m "$(svn stat)"'
#alias gitci='git commit -m "by `whoami` `date "+%Y-%m-%d %H:%M"`"'
alias closure='java -jar ~/local/closure-compiler/compiler.jar --use_only_custom_externs --compilation_level ADVANCED_OPTIMIZATIONS --js'
alias yuicompressor='java -jar ~/local/yuicompressor-2.4.7/build/yuicompressor-2.4.7.jar'
alias js='java -classpath /usr/share/java/js.jar org.mozilla.javascript.tools.shell.Main'

#Raspberry Pi
#alias ssh-raspberrypi='ssh "root@192.168.1.2"'
#alias ssh-raspberrypi-v2='zssh "root@192.168.1.2"'
#alias ssh-raspberrypi-v1='zssh "root@192.168.1.3"'
#alias ssh-raspberrypi='zssh "zhangyuanwei@raspberrypi"'
alias ssh-raspberrypi='zssh "pi@raspberrypi.local"'

alias ssh-vps='zssh "zhangyuanwei@vps" -p 8759'
alias ssh-vps-work='zssh "work@vps" -p 8759'

alias ssh-hao123-mining='bdssh zhangyuanwei@cq01-hao123-mining01.cq01.baidu.com -P yourke@880807'

#alias ssh-nodejs00='bdssh bae@tc-hao123-rd00.tc.baidu.com -P MhxzKhl'
#alias ssh-nodejs01='bdssh bae@tc-hao123-rd01.tc.baidu.com -P MhxzKhl'
alias ssh-nodejs00='bdssh zhangyuanwei@tc-hao123-rd00.tc.baidu.com -P yourke@880807'
alias ssh-nodejs01='bdssh zhangyuanwei@tc-hao123-rd01.tc.baidu.com -P yourke@880807'

#xphrof 性能测试机
alias ssh-hao123-performance='bdssh bae@cq02-hao123-hhvm-ui00.cq02.baidu.com -P MhxzKhl'

#FE机器zhangyuanwei账户
alias ssh-fe='bdssh zhangyuanwei@fe.baidu.com -P yourke@880807'

#Hao123测试机账户
#alias ssh-hao123-test-root='bdssh root@cq01-hao123-rdtest01.vm.baidu.com -P sysinitABCD@ZJM13F'
alias ssh-hao123-test-root='bdssh root@cq01-hao123-rdtest01.vm.baidu.com -P YhblSqt'
alias ssh-hao123-test='bdssh bae@cq01-hao123-rdtest01.vm.baidu.com -P MhxzKhlbae'

alias ssh-hao123-hongwei='bdssh bae@db-hao123-we-q203.db01.baidu.com -P "7jiNYLS&%BK8(sBMaNXl"'
alias ssh-hao123-caihui='bdssh bae@db-hao-test1.vm -P "MhxzKhl"'

#Hao123线上环境
alias ssh-hao123-qa='bdssh bae@yx-testing-hao123-05.vm.baidu.com -P G1Kvo1KZ7F'

#Hao123线上环境
#alias ssh-hao123-online='bdssh zhangyuanwei@tc-bae-haoui0.tc.baidu.com -P yourke@880807'
alias ssh-hao123-online='bdssh zhangyuanwei@tc-bae-haoui1.tc.baidu.com -P yourke@880807'

#Hao123性能测试环境
#alias ssh-hao123-performance='bdssh root@db-hao123-we-q203.db01 -P "7jiNYLS&%BK8(sBMaNXl"'
#alias ssh-hao123-performance='bdssh bae@db-hao-test1.vm.baidu.com -P "MhxzKhl"'

#Hao123 bae文件上传服务器
alias ssh-baeupload='bdssh appbae@bb-hao-test1.vm.baidu.com -P MhxzKhl'
alias ssh-baeupload-root='bdssh root@bb-hao-test1.vm.baidu.com -P YhblSqt'

alias ssh-ting='bdssh bae@ai-ting-test01.ai01.baidu.com -P MhxzKhlbae'
alias ssh-tingonline='bdssh zhangyuanwei@10.26.36.20 -P yourke@123456'
alias ssh-tingbeta='bdssh bae@tc-ting-little.tc.baidu.com -P MhxzKhlbae'
alias ssh-mp330='bdssh bae@db-testing-mp330.db01.baidu.com -P baeapptest'
alias ssh-dataforop='bdssh rd@db-mp3-dataforop.vm.baidu.com -P MhxzKhl'
alias ssh-xianzhuan='bdssh bae@db-ting-apptest03.vm -P MhxzKhl'
alias ssh-jingqi='bdssh mp3@dbl-mp3-test01.vm -P MhxzKhl'
