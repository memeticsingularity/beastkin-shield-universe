> **Deprecated**: 本文档已被 v3.0 规范替代。请参阅 `docs/spec/01-project-structure.md`。本文档保留 6 个月作为过渡期兼容。

# Project Structure Script Usage Guide

# 项目结构脚本使用指南

---

## Introduction / 介绍

This guide explains how to use the provided automation scripts to generate project structure files
for **Beastkin Universe**. These scripts create clean, formatted views of your project
organization.

本指南介绍如何使用提供的自动化脚本来为 **Beastkin Universe** 生成项目结构文件。这些脚本创建项目组织的清晰、格式化视图。

**Features / 特性**:

- Generates both folder-only and full structure views / 生成仅文件夹和完整结构两种视图
- Uses project name instead of drive letters / 使用项目名称替代盘符显示
- Automatically adds timestamps / 自动添加时间戳
- Outputs to Git-ignored `structure/` directory / 输出到Git忽略的 `structure/` 目录
- Cross-platform support with consistent output / 跨平台支持，输出格式一致
- Visual icons in output for better readability / 输出中使用视觉图标，提高可读性

---

## Prerequisites / 准备工作

1. **Locate the scripts / 找到脚本**:
    - Windows: `scripts/generate_structure.bat`
    - Mac/Linux: `scripts/generate_structure.sh`

2. **Ensure you're in the project root directory / 确保在项目根目录**:
   ```bash
   cd /path/to/beastki-universe
   ```

---

## Windows Usage / Windows使用方法

### Basic Usage / 基本使用

```bash
# From project root / 从项目根目录运行:
scripts\generate_structure.bat
```

### What it does / 功能说明

The script will:
脚本将：

1. Create output directory: `structure/` / 创建输出目录：`structure/`
2. Generate two Markdown files with timestamps / 生成两个带时间戳的Markdown文件：
    - `folder_structure_YYYYMMDD_HHMM.md` - Folders only / 仅文件夹
    - `full_structure_YYYYMMDD_HHMM.md` - Complete structure / 完整结构
3. Display the output location with visual icons / 使用视觉图标显示输出位置

### Example Output / 示例输出

```txt
📁 Generating directory structure files...

📄 1. Generating folder structure...
📄 2. Generating full file structure...

✅ Done
📁 Output directory: topath\beastki-universe\structure\
📋 Generated files:
folder_structure_20251213_1017.md
full_structure_20251213_1017.md
```

---

## Mac/Linux Usage / Mac/Linux使用方法

### 1. Make script executable / 使脚本可执行

```bash
chmod +x scripts/generate_structure.sh
```

### 2. Run the script / 运行脚本

```bash
# From project root / 从项目根目录运行:
./scripts/generate_structure.sh
```

### Alternative: Run directly / 替代方案：直接运行

```bash
bash scripts/generate_structure.sh
```

### Note about tree command / 关于tree命令的说明

For best results, install the `tree` command:
为获得最佳效果，请安装 `tree` 命令：

```bash
# macOS / macOS:
brew install tree

# Ubuntu/Debian / Ubuntu/Debian:
sudo apt-get install tree

# CentOS/RHEL / CentOS/RHEL:
sudo yum install tree
```

The script will work without `tree`, but the output format may be simpler.
脚本在没有 `tree` 的情况下也能工作，但输出格式可能更简单。

---

## Viewing Results / 查看结果

### 1. Locate the files / 定位文件

All generated files are in `structure/` with timestamps:
所有生成的文件都在 `structure/` 目录中，带有时间戳：

```
structure/
├── folder_structure_20251213_1017.md
└── full_structure_20251213_1017.md
```

### 2. Open the files / 打开文件

```bash
# Windows / Windows:
notepad structure\folder_structure_*.md
notepad structure\full_structure_*.md

# macOS / macOS:
open structure/folder_structure_*.md
open structure/full_structure_*.md

# Linux / Linux:
xdg-open structure/folder_structure_*.md
xdg-open structure/full_structure_*.md
```

### 3. File format / 文件格式

Each file contains:
每个文件包含：

- Project structure in text format / 文本格式的项目结构
- Markdown code blocks for easy viewing / Markdown代码块便于查看
- Clear indentation showing hierarchy / 清晰的缩进显示层次结构

---

## Troubleshooting / 故障排除

### Problem: Script not found / 问题：找不到脚本

**Solution**: Ensure you're in the project root directory:
**解决方案**：确保在项目根目录：

```bash
cd /path/to/beastki-universe
ls scripts/  # Should show generate_structure files / 应显示generate_structure文件
```

### Problem: Permission denied (Mac/Linux) / 问题：权限被拒绝（Mac/Linux）

**Solution**: Make the script executable:
**解决方案**：使脚本可执行：

```bash
chmod +x scripts/generate_structure.sh
```

### Problem: No output files / 问题：没有输出文件

**Solution**: Check if `structure/` directory exists:
**解决方案**：检查 `structure/` 目录是否存在：

```bash
ls -la structure/
```

If empty, check script output for errors.
如果为空，检查脚本输出中的错误。

### Problem: Script runs but shows errors / 问题：脚本运行但显示错误

**Solution**: Most errors are non-critical. The script will still generate files. Common issues:
**解决方案**：大多数错误不重要。脚本仍会生成文件。常见问题：

- Missing `tree` command on Mac/Linux (script uses fallback) / Mac/Linux缺少 `tree` 命令（脚本使用备用方案）
- Temporary file system issues (retry) / 临时文件系统问题（重试）

---

## Quick Reference / 快速参考

### Windows / Windows：

```bash
cd beastki-universe
scripts\generate_structure.bat
```

### Mac/Linux / Mac/Linux：

```bash
cd beastki-universe
chmod +x scripts/generate_structure.sh
./scripts/generate_structure.sh
```

### All outputs go to / 所有输出都到：

```
structure/folder_structure_YYYYMMDD_HHMM.md
structure/full_structure_YYYYMMDD_HHMM.md
```

---

## Need Help? / 需要帮助？

For script-specific issues:
针对脚本特定问题：

1. Check you're in the correct directory / 检查是否在正确的目录
2. Ensure scripts have proper permissions / 确保脚本有适当权限
3. Review the script output for error messages / 查看脚本输出的错误信息

For other terminal/command line questions, please refer to general command line documentation.
对于其他终端/命令行问题，请参考通用命令行文档。

---

**Note**: These scripts are maintained in the `scripts/` directory. Any updates to the scripts will
be reflected in their respective files.
**注意**：这些脚本在 `scripts/` 目录中维护。对脚本的任何更新都将在各自文件中反映。

---

*Last updated: 2025-12-13*
*Authors: Deepseek X memetic-singularity*