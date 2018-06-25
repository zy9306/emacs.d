#!/bin/sh

if [ `whoami` = "root" ];then
    prefix=''  
else
    prefix='sudo '  
fi

cd ~
HOME=$(pwd)
EMACSD_PATH="${HOME}/.emacs.d"
EMACSD_PATH_GIT="${EMACSD_PATH}/.git"
EMACS_BASE_VERSION="26.1"
EMACS_VERSION="emacs-${EMACS_BASE_VERSION}"
EMACS_BASE_DOWNLOAD_URL="http://mirrors.ustc.edu.cn/gnu/emacs/"
EMACS_SOURCE_EXC=".tar.gz"
EMACS_DOWNLOAD_URL="${EMACS_BASE_DOWNLOAD_URL}${EMACS_VERSION}${EMACS_SOURCE_EXC}"
GIT_REPO="https://github.com/zy9306/emacs.d.git"
GIT_BRANCH="zy/personal"
INSTALLED=$(emacs --version|grep $EMACS_BASE_VERSION)


if [ "$INSTALLED" != "" ]
then
    echo ">>>>>>>已安装${EMACS_VERSION}"
else
    echo ">>>>>>>开始安装${EMACS_VERSION}..."
    ${prefix}apt-get update
    ${prefix}apt-get install -y libgtk2.0-dev
    ${prefix}apt-get install -y libgtk-3-dev
    ${prefix}apt-get install -y libxpm-dev
    ${prefix}apt-get install -y libjpeg62-dev
    ${prefix}apt-get install -y libgif-dev
    ${prefix}apt-get install -y libtiff-dev
    ${prefix}apt-get install -y libncurses-dev
    # emacs-26
    ${prefix}apt-get install -y libgnutls-dev
    ${prefix}apt-get install -y mailutils

    # lcms2
    ${prefix}apt-get install -y liblcms2-2
    ${prefix}apt-get install -y liblcms2-dev
    ${prefix}apt-get install -y liblcms2-utils

    # ag
    ${prefix}apt-get install silversearcher-ag

    cd ~
    rm -rf emacs_tmp
    mkdir emacs_tmp && cd emacs_tmp
    
    wget -c $EMACS_DOWNLOAD_URL
    tar -xzvf ${EMACS_VERSION}${EMACS_SOURCE_EXC}
    cd ${EMACS_VERSION}
    ./configure
    make
    ${prefix}make install
fi


if [ ! -d "${EMACSD_PATH_GIT}" ]; then
    rm -rf $EMACSD_PATH
    git clone -b ${GIT_BRANCH} ${GIT_REPO} $EMACSD_PATH
    cd $EMACSD_PATH
    cp fonts/* /usr/local/share/fonts/
    ${prefix}fc-cache -f -v
    fc-list
else
    cd $EMACSD_PATH
    git reset --hard HEAD
    git pull origin ${GIT_BRANCH}
fi

emacs
