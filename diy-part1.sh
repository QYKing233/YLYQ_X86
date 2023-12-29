#!/bin/bash

### 添加自定义插件

# 创建community目录
mkdir -p package/community

# 把community目录置为当前
pushd package/community


# 添加 luci-app-alist
git clone https://github.com/sbwml/luci-app-alist


# 添加 luci-app-passwall
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git


# 添加 luci-app-ssr-plus
git clone -b main --depth=1 https://github.com/fw876/helloworld.git


# 添加 luci-app-vssr
svn export https://github.com/haiibo/openwrt-packages/trunk/luci-app-vssr
svn export https://github.com/haiibo/openwrt-packages/trunk/lua-maxminddb


# 添加 OpenClash
svn export https://github.com/vernesong/OpenClash/trunk/luci-app-openclash


# 添加 luci-app-onliner (依赖 luci-app-nlbwmon)
git clone --depth=1 https://github.com/rufengsuixing/luci-app-onliner.git


# 添加 luci-app-poweroff
git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff.git


# 添加 luci-app-adguardhome
svn export https://github.com/Boos4721/OpenWrt-Packages/trunk/luci-app-adguardhome


# 添加 luci-app-argon-config & luci-app-argon 
git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git


# 添加 open-app-filter
git clone --depth=1 https://github.com/destan19/OpenAppFilter.git


# 添加 luci-app-syncthing
svn export https://github.com/immortalwrt/luci/branches/openwrt-18.06/applications/luci-app-syncthing


# 添加 luci-app-filebrowser
git clone -b 18.06 https://github.com/xiaozhuai/luci-app-filebrowser.git


# 添加 luci-app-fileassistant
svn export https://github.com/kenzok8/small-package/trunk/luci-app-fileassistant


# 添加 luci-app-beardropper
svn export https://github.com/kenzok8/small-package/trunk/luci-app-beardropper


# 添加 luci-app-irqbalance
svn export https://github.com/QiuSimons/OpenWrt-Add/trunk/luci-app-irqbalance


# 添加 luci-app-ssr-mudb-server
svn export https://github.com/Lienol/openwrt-package/trunk/luci-app-ssr-mudb-server


# 添加 luci-app-ddnsgo
git clone --depth=1 https://github.com/sirpdboy/luci-app-ddns-go


# 添加 luci-app-gost
svn export https://github.com/kenzok8/small-package/trunk/luci-app-gost
svn export https://github.com/kenzok8/small-package/trunk/gost


# 添加 luci-app-unblockneteasemusic
svn export https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic/branches/master luci-app-unblockneteasemusic


popd
### 添加完成
