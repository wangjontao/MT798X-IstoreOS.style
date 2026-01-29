#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# istore
echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default
echo 'src-git nas https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default
echo 'src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' >> feeds.conf.default

# 科学插件
sed -i '1i src-git passwall https://github.com/Openwrt-Passwall/openwrt-passwall.git;main' feeds.conf.default
sed -i '2i src-git passwall2 https://github.com/Openwrt-Passwall/openwrt-passwall2.git;main' feeds.conf.default
sed -i '3i src-git passwall_packages https://github.com/Openwrt-Passwall/openwrt-passwall-packages.git;main' feeds.conf.default
sed -i '4i src-git OpenClash https://github.com/vernesong/OpenClash.git;master' feeds.conf.default
sed -i '5i src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main' feeds.conf.default
sed -i '6i src-git momo https://github.com/nikkinikki-org/OpenWrt-momo.git;main' feeds.conf.default
sed -i '7i src-git daed https://github.com/QiuSimons/luci-app-daed.git;main' feeds.conf.default
sed -i '8i src-git ssr-plus https://github.com/fw876/helloworld.git;main' feeds.conf.default

# 插件添加
git clone --depth=1 https://github.com/sirpdboy/luci-app-watchdog package/watchdog
git clone --depth=1 https://github.com/sirpdboy/luci-app-taskplan package/taskplan
git clone --depth=1 https://github.com/iv7777/luci-app-authshield package/authshield
git clone --depth=1 https://github.com/EasyTier/luci-app-easytier package/easytier
git clone --depth=1 https://github.com/Tokisaki-Galaxy/luci-app-tailscale-community package/tailscale
# 主题
git clone --depth=1 -b openwrt-24.10 https://github.com/sbwml/luci-theme-argon.git package/argon
git clone --depth=1 https://github.com/eamonxg/luci-theme-aurora.git package/luci-theme-aurora
git clone --depth=1 https://github.com/eamonxg/luci-app-aurora-config.git package/luci-app-aurora-config
git clone --depth=1 https://github.com/sirpdboy/luci-theme-kucat.git package/luci-theme-kucat
git clone --depth=1 -b master https://github.com/sirpdboy/luci-app-kucat-config.git package/luci-app-kucat-config
