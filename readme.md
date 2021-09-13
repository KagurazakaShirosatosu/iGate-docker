# iGate-docker

此项目在树莓派上，您需要一个 rtl-sdr 和一个树莓派，在树莓派上安装好 `docker` 和 `docker-compose`，把树莓派、天线和 rtl-sdr 安装妥当后，把 `sdr.conf` 的内容修改为您自己实际的内容：
```
MYCALL   => 呼号
MODEM    => 调制解调器的具体速率
IGSERVER => 要上传的服务器
IGLOGIN  => 呼号 + APRS passcode
OBEACON  => 上传的iGate服务器的一些设定，经纬度要用度分秒
```
APRS passcode 可以在这边生成：https://apps.magicbug.co.uk/passcode/
最后保存之后就可以 `docker-compose up` 了。