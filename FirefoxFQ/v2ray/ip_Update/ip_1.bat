@Echo Off
Title 从GitHub云端更新 v2ray 最新可用 IP
cd /d %~dp0
..\..\wget --ca-certificate=ca-bundle.crt -c https://gitlab.com/free9999/ipupdate/-/raw/master/v2rayN/guiNConfig.json

if exist guiNConfig.json goto startcopy
echo ip更新失败，请试试另外一个，如果都不行，请反馈kebi2014@gmail.com
pause
exit
:startcopy

del "..\guiNConfig.json_backup"
ren "..\guiNConfig.json"  guiNConfig.json_backup
copy /y "%~dp0guiNConfig.json" ..\guiNConfig.json
del "%~dp0guiNConfig.json"
ECHO.&ECHO.已更新完成最新可用v2ray配置,请按回车键或空格键启动程序！ &PAUSE >NUL 2>NUL
exit