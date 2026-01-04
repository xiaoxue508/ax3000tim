#!/bin/bash
# Description: OpenWrt DIY script part 1 (Before Update feeds)

# 1. 取消注释 feed sources (如果默认被注释的话)
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 2. 添加 Passwall 及其依赖源 (使用 xiaorouji 的源，适配性最好)
# 注意：ImmortalWrt 自带了不少包，但为了 Passwall 最新版，建议手动添加
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages' >>feeds.conf.default

# 3. (可选) 添加其他常用包源，如 OpenClash 等，不需要可忽略
# echo 'src-git openclash https://github.com/vernesong/OpenClash' >>feeds.conf.default
