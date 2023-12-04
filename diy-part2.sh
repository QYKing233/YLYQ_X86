#!/bin/bash

########################   调整菜单  ###########################

# 调整 luci-app-filebrowser 到 VPN 菜单
sed -i 's/services/nas/g' ./package/community/luci-app-filebrowser/luasrc/controller/*.lua
sed -i 's/services/nas/g' ./package/community/luci-app-filebrowser/luasrc/view/filebrowser/*.htm
sed -i 's/services/nas/g' ./package/community/luci-app-filebrowser/luasrc/model/cbi/filebrowser/*.lua


# 调整 luci-app-gost 到 VPN 菜单
sed -i 's/services/vpn/g' ./package/community/luci-app-gost/luasrc/controller/*.lua
sed -i 's/services/vpn/g' ./package/community/luci-app-gost/luasrc/model/cbi/*.lua
sed -i 's/services/vpn/g' ./package/community/luci-app-gost/luasrc/view/gost/*.htm


# 调整 luci-app-v2ray-server 到 VPN 菜单
sed -i 's/services/vpn/g' ./feeds/luci/applications/luci-app-v2ray-server/luasrc/controller/*.lua
sed -i 's/services/vpn/g' ./feeds/luci/applications/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/api/*.lua
sed -i 's/services/vpn/g' ./feeds/luci/applications/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/*.lua
sed -i 's/services/vpn/g' ./feeds/luci/applications/luci-app-v2ray-server/luasrc/view/v2ray_server/*.htm


# 调整 luci-app-nft-qos 到 网络 菜单
sed -i 's/services/network/g' ./feeds/luci/applications/luci-app-nft-qos/luasrc/controller/*.lua
sed -i 's/services/network/g' ./feeds/luci/applications/luci-app-nft-qos/luasrc/model/cbi/nft-qos/*.lua
sed -i 's/services/network/g' ./feeds/luci/applications/luci-app-nft-qos/luasrc/view/nft-qos/*.htm

########################   调整完成  ###########################




########################   调整数据类型    ######################

# 调整 Nps 内网穿透 服务器地址数据类型为 string
sed -i 's/ipaddr/string/g' ./feeds/luci/applications/luci-app-nps/luasrc/model/cbi/nps.lua
sed -i '/Must an IPv4 address/d' ./feeds/luci/applications/luci-app-nps/luasrc/model/cbi/nps.lua


# 调整 ShadowsocksR Plus+ 的wireguard本地地址数据类型为 string
sed -i '808 s/cidr/string/g' ./package/community/helloworld/luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/client-config.lua

########################    调整完成    ########################



# 调整 luci-app-syncthing 的 Makefile 文件中 include 的路径
sed -i 's/..\/..\/luci.mk/$(TOPDIR)\/feeds\/luci\/luci.mk/g' ./package/community/luci-app-syncthing/Makefile


# 删除默认 luci-theme-argon & luci-app-argon-config 插件
rm -rf feeds/luci/themes/luci-theme-argon 
rm -rf feeds/luci/applications/luci-app-argon-config


# 为 luci-app-Alist 调整 golang 版本
sudo apt-get install libfuse-dev
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 21.x feeds/packages/lang/golang




#######################    调整OpenWRT配置    ############################

# 调整 luci-theme-argon 的背景图片 
pushd package/community/luci-theme-argon/htdocs/luci-static/argon/img
rm -rf ./bg1.jpg
wget https://raw.githubusercontent.com/QYKing233/YLYQ_X86/main/data/bg1.jpg
popd


# 调整默认 IP 与 Hostname
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/YLYQ/g' package/base-files/files/bin/config_generate


# 调整日期样式
sed -i 's/os.date()/os.date("%a %Y-%m-%d %H:%M:%S")/g' package/lean/autocore/files/*/index.htm


# 添加编译日期
date_version=$(date +"%Y-%m-%d")
sed -i "56 s/OpenWrt/OpenWrt ($date_version) Build_By : YLYQ/g" ./package/lean/default-settings/files/zzz-default-settings


# 调整默认 shell 为 zsh
sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd


# 调整 kernel 版本
# sed -i 's/5.15/5.10/g' target/linux/rockchip/Makefile


# 调整 banner
pushd package/base-files/files/etc
rm -rf ./banner
wget https://raw.githubusercontent.com/QYKing233/YLYQ_X86/main/data/banner
popd


##############################    调整完成    ################################


## 安装 oh-my-zsh
mkdir -p files/root
pushd files/root
# Clone oh-my-zsh repository
git clone https://github.com/robbyrussell/oh-my-zsh ./.oh-my-zsh
# Install extra plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ./.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ./.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ./.oh-my-zsh/custom/plugins/zsh-completions
wget https://raw.githubusercontent.com/QYKing233/YLYQ_X86/main/data/.zshrc
popd
