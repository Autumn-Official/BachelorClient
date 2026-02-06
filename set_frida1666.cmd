@echo off
setlocal

:: 抑制代码页切换的输出
chcp 65001 >nul

:: 设置源文件夹路径
set "SOURCE_DIR=frida-server\1666"

:: 设置目标文件路径
set "TARGET_PYPROJECT=%cd%\pyproject.toml"
set "TARGET_POETRY_LOCK=%cd%\poetry.lock"
set "TARGET_ADB_PY=%cd%\src\launcher\openbachelorc\adb.py"

:: 设置源文件路径
set "SOURCE_PYPROJECT=%cd%\%SOURCE_DIR%\pyproject.toml"
set "SOURCE_POETRY_LOCK=%cd%\%SOURCE_DIR%\poetry.lock"
set "SOURCE_ADB_PY=%cd%\%SOURCE_DIR%\adb.py"

:: 检查源文件是否存在
if not exist "%SOURCE_PYPROJECT%" (
    echo 错误: 源文件不存在: %SOURCE_PYPROJECT%
    exit /b 1
)

if not exist "%SOURCE_POETRY_LOCK%" (
    echo 错误: 源文件不存在: %SOURCE_POETRY_LOCK%
    exit /b 1
)

if not exist "%SOURCE_ADB_PY%" (
    echo 错误: 源文件不存在: %SOURCE_ADB_PY%
    exit /b 1
)

:: 执行文件替换并抑制输出
copy /Y "%SOURCE_PYPROJECT%" "%TARGET_PYPROJECT%" >nul
copy /Y "%SOURCE_POETRY_LOCK%" "%TARGET_POETRY_LOCK%" >nul
copy /Y "%SOURCE_ADB_PY%" "%TARGET_ADB_PY%" >nul

:: 检查替换是否成功
if errorlevel 1 (
    echo 错误: 文件替换失败
    exit /b 1
) else (
    echo 已修改为frida1666
)

pause
