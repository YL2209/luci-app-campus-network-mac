#!/bin/bash

git clone https://github.com/YL2209/luci-app-campus-network-mac.git package/luci-app-campus-network-mac
./scripts/feeds install luci-app-wan-mac
echo "CONFIG_ALL_NONSHARED=n" > .config
echo "CONFIG_ALL_KMODS=n" >> .config
echo "CONFIG_ALL=n" >> .config
echo "CONFIG_AUTOREMOVE=n" >> .config
echo "CONFIG_LUCI_LANG_zh_Hans=y" >> .config
echo "CONFIG_PACKAGE_luci-app-wan-mac=m" >> .config