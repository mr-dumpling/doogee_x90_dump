#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery:10926336:0cbd0026907489cef8205124d0a2b20adc193c43; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/boot:6631680:c4f0618156a5ab5f8a1a9b66c9f4aaa95dc907e0 EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery 0cbd0026907489cef8205124d0a2b20adc193c43 10926336 c4f0618156a5ab5f8a1a9b66c9f4aaa95dc907e0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
