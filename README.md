# OpenBachelorC

OpenBachelor Client. For PvZ Online.

This project is a game launcher only. If you are looking for a game server, please look at OpenBachelor Server.

Discord: [https://discord.gg/W4yPMpBv8F](https://discord.gg/W4yPMpBv8F)


## Supported Environment

A rooted arm64 android phone.

A jailed arm64 android phone (with OpenBachelorG).

Mac (Apple silicon) with AVD (Android Studio) (recommended: arm64, Android 15, Google APIs Image).

> FYI: For AVD users, do not use Google Play Store image, which is not readily rooted.

## How-To

### 0. Start Server

1. Use a game server, preferably OpenBachelor Server.

### 1. Setup Client

1. Install Python 3.12 and add `python.exe` to path.

2. Run `setup.cmd`.

3. Open your emulator/phone's settings, enable its root permission and adb connection.

4. Run `load_config_[YOUR_DEVICE].cmd`. For example, if you are using a jailed phone (no root permission), run `load_config_jailed_phone.cmd`.

### 2. Run Client

1. Run `main.cmd`.



# OpenBachelorC

OpenBachelor客户。关于PvZ在线版。

这个项目仅是一个游戏启动器。如果你在找游戏服务器，请看看OpenBachelor Server。

Discord：[https://discord.gg/W4yPMpBv8F]（https://discord.gg/W4yPMpBv8F）

## 支持环境

一部已root的arm64安卓手机。

一部被监禁的arm64安卓手机（带OpenBachelorG）。

Mac（苹果硅）配备AVD（Android Studio）（推荐：arm64、Android 15、Google APIs Image）。

> 提醒：对于AVD用户，不要使用Google Play商店的镜像，因为它不易被root。

##作指南

### 0.启动服务器

1. 使用游戏服务器，最好是OpenBachelor服务器。

### 1.设置客户端

1. 安装 Python 3.12，并在路径中添加“python.exe”。

2. 跑“setup.cmd”。

3. 打开你的模拟器/手机设置，启用它的root权限和adb连接。

4. 跑“load_config_[YOUR_DEVICE].cmd'。例如，如果你使用的是被隔离的手机（无root权限），运行“load_config_jailed_phone.cmd”。

### 2.运行客户端

1. 跑“main.cmd”。


### 在模拟器上使用

模拟器上目前需要使用16.6.6版本的frida版本进行hook

所以想要在模拟器版本上使用时前运行[set_frida1666.cmd](set_frida1666.cmd)

然后再运行[setup.cmd](setup.cmd)

如果要换成arm机器跑就运行[set_frida1762.cmd](set_frida1762.cmd)

然后再运行一遍[setup.cmd](setup.cmd)
