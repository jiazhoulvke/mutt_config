#!/bin/bash
###########################################################
#                        安装脚本                         #
###########################################################

#检测是否安装了所需的软件
if [ $1 != "-f" ]; then
    type abckdfdf >/dev/null 2>&1 || { echo >&2 "没有安装abc"; exit 1; }
    type mutt >/dev/null 2>&1 || { echo >&2 "没有安装mutt"; exit 1; }
    type offlineimap >/dev/null 2>&1 || { echo >&2 "没有安装offlineimap"; exit 1; }
    type msmtp >/dev/null 2>&1 || { echo >&2 "没有安装msmtp"; exit 1; }
    type w3m >/dev/null 2>&1 || { echo >&2 "没有安装w3m"; exit 1; }
    type wvHtml >/dev/null 2>&1 || { echo >&2 "没有安装wv"; exit 1; }
    type gmail-notify >/dev/null 2>&1 || { echo >&2 "没有安装gmail-notify"; exit 1; }
fi

#获取帐号、密码和发件人名称
echo "输入你的帐号(不包含@gmail.com):"
read USERNAME
echo "输入你的密码(明文):"
read PASSWORD
echo "输入发件人名称(如加州旅客):"
read REALNAME

#创建邮件文件夹
mkdir -p ~/Mail/INBOX/{new,cur,tmp}
mkdir ~/.mutt/

#创建文件
touch ~/.mutt/alias
sed "s/#USERNAME#/${USERNAME}/g;s/#REALNAME#/${REALNAME}/g" ~/.mutt_config/muttrc > ~/.mutt/muttrc
sed "s/#USERNAME#/${USERNAME}/g;s/#PASSWORD#/${PASSWORD}/g" ~/.mutt_config/msmtprc > ~/.msmtprc
sed "s/#USERNAME#/${USERNAME}/g;s/#PASSWORD#/${PASSWORD}/g" ~/.mutt_config/offlineimaprc > ~/.offlineimaprc
cp ~/.mutt_config/mailcap ~/.mailcap

#安装完毕
echo "现在输入offlineimap即可开始收取邮件"
echo "等offlineimap同步成功后,输入mutt即可开始查看邮箱"
