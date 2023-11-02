#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#### Clone community packages to package/community

mkdir -p package/community
pushd package/community


# Add luci-app-alist
git clone https://github.com/sbwml/luci-app-alist


# Add luci-app-passwall
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git


# Add luci-app-ssr-plus
git clone --depth=1 https://github.com/fw876/helloworld.git


# Add luci-app-vssr
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr.git


# Add OpenClash
svn export https://github.com/vernesong/OpenClash/trunk/luci-app-openclash


# Add luci-app-onliner (need luci-app-nlbwmon)
git clone --depth=1 https://github.com/rufengsuixing/luci-app-onliner.git


# Add luci-app-poweroff
git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff.git


# Add luci-app-adguardhome
svn export https://github.com/Boos4721/OpenWrt-Packages/trunk/luci-app-adguardhome


# Add luci-app-argon-config & luci-app-argon 
git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git


# Add open-app-filter
git clone --depth=1 https://github.com/destan19/OpenAppFilter.git



# Add luci-app-syncthing
svn export https://github.com/kenzok8/small-package/trunk/luci-app-syncthing


# Add luci-app-filebrowser
svn export https://github.com/kenzok8/openwrt-packages/trunk/luci-app-filebrowser
svn export https://github.com/kenzok8/openwrt-packages/trunk/filebrowser


# Add luci-app-fileassistant
svn export https://github.com/kenzok8/small-package/trunk/luci-app-fileassistant


# Add luci-app-beardropper
svn export https://github.com/kenzok8/small-package/trunk/luci-app-beardropper


# Add luci-app-irqbalance
svn export https://github.com/QiuSimons/OpenWrt-Add/trunk/luci-app-irqbalance


# Add luci-app-ssr-mudb-server
svn export https://github.com/Lienol/openwrt-package/trunk/luci-app-ssr-mudb-server


# Add luci-app-ddnsgo
git clone --depth=1 https://github.com/sirpdboy/luci-app-ddns-go


# Add luci-app-gost
svn export https://github.com/kenzok8/small-package/trunk/luci-app-gost
svn export https://github.com/kenzok8/small-package/trunk/gost


# Add luci-app-unblockneteasemusic
svn export https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic/branches/master luci-app-unblockneteasemusic


### exit package/community
popd
