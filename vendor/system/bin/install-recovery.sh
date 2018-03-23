#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 15214592 4a77f419261b811e084fb42ee8fe084faf9f84f2 8980480 a25507389550b95170f2df59b0b73d14119543c0
fi
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:15214592:4a77f419261b811e084fb42ee8fe084faf9f84f2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot:8980480:a25507389550b95170f2df59b0b73d14119543c0 EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery 4a77f419261b811e084fb42ee8fe084faf9f84f2 15214592 a25507389550b95170f2df59b0b73d14119543c0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
