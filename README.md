##我的mutt配置##

mutt配置很麻烦，不过配置好以后用起来相当方便。这份配置仅针对gmail，要用其他邮箱的话需要做些小修改。


##用到的软件##

* mutt (负责查看、管理邮件)
* offlineimap (负责收信)
* msmtp (负责发信)
* w3m (负责将html附件转换成文本供mutt查看)
* wv (负责将word等附件转换成html)
* gmail-notify (用于提醒新邮件)


##相关文件##

* ~/.mutt/muttrc (mutt的配置文件)
* ~/.mutt/alias (mutt的通讯录)
* ~/.offlineimaprc (offlineimap的配置文件)
* ~/.msmtprc (msmtp的配置文件)
* ~/.mailcap (告诉mutt怎样处理各种类型的附件)


##安装##

###一、安装相关软件###

系统是ubuntu或者mint的话输入如下命令:

    sudo apt-get install mutt offlineimap msmtp wv w3m gmail-notify

###二、克隆本repo到本地###

    git clone https://github.com/jiazhoulvke/mutt_config.git ~/.mutt_config

###三、执行安装脚本###

    cd ~/.mutt_config
    ./setup.sh
