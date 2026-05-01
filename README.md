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




---

## 📜 指令文档

### 1. **训练器功能指令**
以下指令用于控制游戏中的特定增强功能，可通过 `enable` 或 `disable` 关键字激活或关闭。

| 指令名称 | 功能描述 | 用途说明                   |
|----------|----------|------------------------|
| `all` | 启用/禁用所有功能 | 一次性操作所有训练器功能           |
| `zero_cost` | 零费用 | 部署干员时不消耗费用             |
| `zero_deploy_cnt` | 零部署限制 | 无部署数量限制                |
| `deploy_everywhere` | 全地形部署 | 干员可在任意地块部署             |
| `zero_cooldown` | 零冷却时间 | 技能无冷却时间限制              |
| `unlimited_token` | 无限信物 | 无限使用代理指挥令牌             |
| `no_sp` | 无需技能点 | 技能释放不消耗 SP             |
| `withdraw_everything` | 撤退全部 | 一键撤退所有干员               |
| `heal_everyone` | 治疗全员 | 所有干员恢复满血状态             |
| `unlimited_ammo` | 无限弹药 | 弹药和技能次数无限制             |
| `eat_enemy` | 吞噬敌人 | 保护目标生命不会减少             |
| `global_range` | 全局射程 | 干员攻击范围覆盖全地图            |
| `anti_air` | 对空攻击 | 所有干员均可攻击空中单位           |
| `true_aoe` | 真实 AOE | 范围攻击无衰减                |
| `no_ban_card` | 无禁用卡片 | 危机合约中无卡片禁用限制           |
| `cloner_assist` | 克隆干员 | 可拥有复数同名干员 <br/>（PVZ变身茄子）    |
| `allow_dup_char` | 允许重复干员 | 干员部署后不会从部署栏消失 <br/>（PVZ种子包） |


> ✅ **使用示例**：
```bash
enable zero_cost          # 启用零费用功能
disable global_range      # 禁用全局射程功能
enable all                # 启用所有功能
disable all               # 禁用所有功能
```



### 2. **CLI 交互指令**

以下指令用于与程序进行交互，执行特定操作或查询信息。

| 指令前缀 | 功能描述 | 用途说明 |
|----------|----------|----------|
| `?` | 回调函数调用 | 触发预定义的回调函数 |
| `!` | 直接执行训练器命令 | 绕过解析流程，直接传递命令 |

#### 回调函数指令
| 指令 | 功能描述 |
|------|----------|
| `?pull_dumped_json` | 拉取转储的 JSON 数据 |
| `?clear_dumped_json` | 清除转储的 JSON 数据 |

#### 直接执行指令
| 指令格式 | 功能描述 |
|----------|----------|
| `!<command>` | 直接执行训练器命令（如 `!enable:zero_cost`） |

> ✅ **使用示例**：
```bash
?pull_dumped_json         # 拉取转储的 JSON 数据
?clear_dumped_json        # 清除转储的 JSON 数据
!enable:zero_cost         # 直接启用零费用功能
```


---

### 3. **注意事项**
- 所有指令均区分大小写，请严格按照文档格式输入。
- 使用 `enable` 和 `disable` 时，确保语法正确，避免拼写错误。
- 若需批量操作，推荐使用 `all` 指令以提高效率。

--- 
