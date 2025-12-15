@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

:: 设置路径
set "SCRIPT_DIR=%~dp0"
set "ROOT_DIR=%SCRIPT_DIR%..\"
set "OUTPUT_DIR=%SCRIPT_DIR%..\structure\"

:: 创建输出目录
mkdir "%OUTPUT_DIR%" 2>nul

:: 获取当前日期时间作为后缀（格式：年月日_时分秒）
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set datetime=%%I
set timestamp=%datetime:~0,8%_%datetime:~8,4%

:: 使用不同的方式输出带图标的行
echo 📁 Generating directory structure files...
echo.

:: 生成文件夹结构
echo [] 1. Generating folder structure...
(
    echo # beastkin-universe Folder Structure
    echo.
    echo ```txt
) > "%OUTPUT_DIR%folder_structure_%timestamp%.md"

:: 运行tree命令并过滤掉不需要的行，然后替换盘符
cd /d "%ROOT_DIR%"
(
    for /f "delims=" %%a in ('tree /A 2^>nul ^| findstr /v /i "Folder PATH listing" ^| findstr /v /i "Volume serial number" ^| findstr /v /c:"^[A-Z]:\\."') do (
        set "line=%%a"
        :: 替换第一行的盘符为项目名称
        if not defined first_line (
            echo beastkin-universe:.
            set "first_line=1"
        ) else (
            :: 保持其他行不变
            echo !line!
        )
    )
) >> "%OUTPUT_DIR%folder_structure_%timestamp%.md"

echo ``` >> "%OUTPUT_DIR%folder_structure_%timestamp%.md"

:: 生成完整文件结构
echo 📄 2. Generating full file structure...
(
    echo # beastkin-universe Full File Structure
    echo.
    echo ```txt
) > "%OUTPUT_DIR%full_structure_%timestamp%.md"

:: 运行tree命令并过滤掉不需要的行，然后替换盘符
(
    for /f "delims=" %%a in ('tree /F /A 2^>nul ^| findstr /v /i "Folder PATH listing" ^| findstr /v /i "Volume serial number" ^| findstr /v /c:"^[A-Z]:\\."') do (
        set "line=%%a"
        :: 替换第一行的盘符为项目名称
        if not defined first_line2 (
            echo beastkin-universe:.
            set "first_line2=1"
        ) else (
            :: 保持其他行不变
            echo !line!
        )
    )
) >> "%OUTPUT_DIR%full_structure_%timestamp%.md"

echo ``` >> "%OUTPUT_DIR%full_structure_%timestamp%.md"

echo.
echo ✅ Done
echo 📁 Output directory: %OUTPUT_DIR%
echo 📋 Generated files:
dir "%OUTPUT_DIR%*%timestamp%.md" /B