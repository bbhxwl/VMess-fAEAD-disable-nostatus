#!/usr/bin/env bash

serFile="/etc/systemd/system/v2ray.service"
sed -i '/ExecStart/i\Environment="V2RAY_VMESS_AEAD_FORCED=false"' $serFile
sed -i '/ExecStart/i\Environment="LimitNOFILE=102400"' $serFile
systemctl daemon-reload
systemctl restart v2ray
echo OK.
exit
