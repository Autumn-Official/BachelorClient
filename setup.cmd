
@echo off
echo 正在安装依赖...

REM 检查是否已安装 pipx
python -m pip show pipx >nul 2>&1
if %errorlevel% neq 0 (
    echo 安装 pipx...
    python -m pip install pipx
) else (
    echo pipx 已安装
)

REM 检查是否已安装 poetry
pipx list | findstr poetry >nul 2>&1
if %errorlevel% neq 0 (
    echo 安装 poetry...
    python -m pipx install poetry
) else (
    echo poetry 已安装
)

REM 使用已安装的 poetry 安装项目依赖
echo 安装项目依赖...
poetry install

echo 安装完成！
pause