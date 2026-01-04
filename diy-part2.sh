#!/bin/bash
# Description: OpenWrt DIY script part 2 (After Update feeds)

# 1. 修改默认 IP 为 192.168.1.1 (你可以改成 192.168.31.1 以符合小米习惯)
sed -i 's/192.168.1.1/192.168.1.1/g' package/base-files/files/bin/config_generate

# 2. 修改主机名为 AX3000T
sed -i 's/OpenWrt/AX3000T/g' package/base-files/files/bin/config_generate

# 3. (可选) 修复部分主题在 24.10 下的显示问题或更改默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
