# Git LFS（大文件存储）完整设置指南

# Complete Git LFS (Large File Storage) Setup Guide

---

## 📖 什么是Git LFS？

## 📖 What is Git LFS?

Git LFS（Large File Storage）是Git的一个扩展，用于管理大型文件。它会将大文件（如图像、音频、视频等）存储在单独的服务器上，而在Git仓库中只存储指向这些文件的指针。

Git LFS (Large File Storage) is an extension to Git for managing large files. It stores large
files (such as images,
audio, video, etc.) on a separate server, while only storing pointers to these files in the Git
repository.

**为什么我们需要Git LFS？**

- 避免Git仓库变得过于庞大
- 加快克隆和拉取操作的速度
- 更好地管理二进制文件（如图片）的版本历史
- 防止Git处理不适合的大文件时出现性能问题

**Why do we need Git LFS?**

- Avoid making the Git repository too large
- Speed up cloning and fetching operations
- Better manage version history of binary files (like images)
- Prevent performance issues when Git handles unsuitable large files

---

## 📦 项目当前的Git LFS配置

## 📦 Current Git LFS Configuration in the Project

项目已经配置了 `.gitattributes` 文件，指定了哪些文件类型使用Git LFS管理：

The project already has a `.gitattributes` file configured, specifying which file types are managed
by Git LFS:

```
*.png filter=lfs diff=lfs merge=lfs -text
*.jpg filter=lfs diff=lfs merge=lfs -text
worlds/beastshield-reforged/original/images/main-story/** filter=lfs diff=lfs merge=lfs -text
worlds/beastshield/original/images/main-story/** filter=lfs diff=lfs merge=lfs -text
```

**配置解读 / Configuration Interpretation:**

- `*.png` 和 `*.jpg`：所有PNG和JPG图片都将使用Git LFS管理
- 特定路径：项目中特定目录下的所有文件也将使用Git LFS管理
- `filter=lfs`：指定使用LFS过滤器
- `diff=lfs` 和 `merge=lfs`：指定LFS处理diff和合并
- `-text`：标记这些文件不是文本文件

- `*.png` and `*.jpg`: All PNG and JPG images will be managed by Git LFS
- Specific paths: All files in specific directories in the project will also be managed by Git LFS
- `filter=lfs`: Specifies to use LFS filter
- `diff=lfs` and `merge=lfs`: Specifies LFS handles diff and merge
- `-text`: Marks these files as not text files

---

## 🛠️ 如何安装Git LFS

## 🛠️ How to Install Git LFS

### Windows系统 / Windows System

#### 方法1：使用Git for Windows安装包

#### Method 1: Using Git for Windows Installer

1. 下载最新版Git for Windows：https://gitforwindows.org/
2. 在安装过程中，选择"Install Git LFS"选项
3. 完成安装后，重启命令行工具

1. Download the latest Git for Windows: https://gitforwindows.org/
2. During installation, select the "Install Git LFS" option
3. After installation completes, restart your command line tool

#### 方法2：独立安装Git LFS

#### Method 2: Standalone Git LFS Installation

1. 下载Git LFS Windows安装包：https://github.com/git-lfs/git-lfs/releases
2. 运行安装程序
3. 安装完成后，打开命令提示符，运行：`git lfs install`

1. Download Git LFS Windows installer: https://github.com/git-lfs/git-lfs/releases
2. Run the installer
3. After installation, open Command Prompt and run: `git lfs install`

### macOS系统 / macOS System

#### 方法1：使用Homebrew（推荐）

#### Method 1: Using Homebrew (Recommended)

```bash
# 安装Homebrew（如果尚未安装）
# Install Homebrew (if not already installed)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 使用Homebrew安装Git LFS
# Install Git LFS using Homebrew
brew install git-lfs

# 初始化Git LFS
# Initialize Git LFS
git lfs install
```

#### 方法2：使用MacPorts

#### Method 2: Using MacPorts

```bash
# 安装MacPorts（如果尚未安装）
# Install MacPorts (if not already installed)
# 访问 https://www.macports.org/install.php

# 使用MacPorts安装Git LFS
# Install Git LFS using MacPorts
sudo port install git-lfs

# 初始化Git LFS
# Initialize Git LFS
git lfs install
```

### Linux系统 / Linux System

#### Ubuntu/Debian系统

#### Ubuntu/Debian Systems

```bash
# 添加Git LFS仓库
# Add Git LFS repository
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash

# 安装Git LFS
# Install Git LFS
sudo apt-get install git-lfs

# 初始化Git LFS
# Initialize Git LFS
git lfs install
```

#### CentOS/RHEL/Fedora系统

#### CentOS/RHEL/Fedora Systems

```bash
# 添加Git LFS仓库
# Add Git LFS repository
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.rpm.sh | sudo bash

# 安装Git LFS
# Install Git LFS
sudo yum install git-lfs

# 或对于Fedora / Or for Fedora
sudo dnf install git-lfs

# 初始化Git LFS
# Initialize Git LFS
git lfs install
```

#### Arch Linux系统

#### Arch Linux Systems

```bash
# 使用pacman安装Git LFS
# Install Git LFS using pacman
sudo pacman -S git-lfs

# 初始化Git LFS
# Initialize Git LFS
git lfs install
```

---

## 🔧 如何配置Git LFS

## 🔧 How to Configure Git LFS

### 步骤1：验证Git LFS安装

### Step 1: Verify Git LFS Installation

安装完成后，验证Git LFS是否正确安装：

After installation, verify that Git LFS is correctly installed:

```bash
# 检查Git LFS版本
# Check Git LFS version
git lfs version

# 应该显示类似：git-lfs/3.3.0 (GitHub; linux amd64; go 1.19.3)
# Should display something like: git-lfs/3.3.0 (GitHub; linux amd64; go 1.19.3)
```

### 步骤2：克隆项目并初始化Git LFS

### Step 2: Clone the Project and Initialize Git LFS

如果你已经克隆了项目：

If you have already cloned the project:

```bash
# 进入项目目录
# Enter project directory
cd /path/to/beastkin-universe

# 初始化Git LFS
# Initialize Git LFS
git lfs install

# 检查Git LFS是否已正确设置
# Check if Git LFS is correctly set up
git lfs status
```

如果是第一次克隆项目：

If cloning the project for the first time:

```bash
# 克隆项目（会自动处理LFS文件）
# Clone the project (will automatically handle LFS files)
git clone https://github.com/your-username/beastkin-universe.git

# 进入项目目录
# Enter project directory
cd beastkin-shield-universe

# 拉取所有LFS文件
# Pull all LFS files
git lfs pull
```

### 步骤3：跟踪大文件

### Step 3: Track Large Files

项目已经通过 `.gitattributes` 文件配置了哪些文件由Git LFS管理。你可以检查当前跟踪的文件类型：

The project already configures which files are managed by Git LFS through the `.gitattributes` file.
You can check
currently tracked file types:

```bash
# 查看当前跟踪的文件模式
# View currently tracked file patterns
git lfs track

# 输出应该显示：
# *.png filter=lfs diff=lfs merge=lfs -text
# *.jpg filter=lfs diff=lfs merge=lfs -text
# worlds/beastshield-reforged/original/images/main-story/** filter=lfs diff=lfs merge=lfs -text
# worlds/beastshield/original/images/main-story/** filter=lfs diff=lfs merge=lfs -text
```

如果你想添加新的文件类型到Git LFS跟踪：

If you want to add new file types to Git LFS tracking:

```bash
# 例如，添加.psd文件到Git LFS跟踪
# For example, add .psd files to Git LFS tracking
git lfs track "*.psd"

# 这将更新.gitattributes文件
# This will update the .gitattributes file
```

**重要**：如果你修改了 `.gitattributes` 文件，记得提交它：

**Important**: If you modify the `.gitattributes` file, remember to commit it:

```bash
git add .gitattributes
git commit -m "添加.psd文件到Git LFS跟踪"
git commit -m "Add .psd files to Git LFS tracking"
```

---

## 🚀 常用Git LFS命令

## 🚀 Common Git LFS Commands

### 基本命令 / Basic Commands

```bash
# 初始化Git LFS（每个仓库只需要执行一次）
# Initialize Git LFS (only needs to be done once per repository)
git lfs install

# 查看Git LFS状态
# View Git LFS status
git lfs status

# 查看Git LFS版本
# View Git LFS version
git lfs version

# 查看当前跟踪的文件模式
# View currently tracked file patterns
git lfs track
```

### 文件管理命令 / File Management Commands

```bash
# 拉取所有LFS文件（克隆后或切换分支后可能需要）
# Pull all LFS files (may be needed after cloning or switching branches)
git lfs pull

# 从特定远程拉取LFS文件
# Pull LFS files from a specific remote
git lfs pull origin main

# 检查哪些文件由Git LFS管理
# Check which files are managed by Git LFS
git lfs ls-files

# 列出所有LFS对象
# List all LFS objects
git lfs ls-files --all

# 查看LFS对象的详细信息
# View detailed information of LFS objects
git lfs ls-files --long
```

### 维护命令 / Maintenance Commands

```bash
# 清理本地LFS文件缓存
# Clean local LFS file cache
git lfs prune

# 检查可以删除的LFS对象（预览模式）
# Check which LFS objects can be deleted (preview mode)
git lfs prune --dry-run

# 验证LFS对象的完整性
# Verify integrity of LFS objects
git lfs fsck

# 迁移现有的大文件到LFS（高级操作，谨慎使用）
# Migrate existing large files to LFS (advanced operation, use with caution)
git lfs migrate import --everything --include="*.png,*.jpg"
```

### 故障排除命令 / Troubleshooting Commands

```bash
# 检查LFS过滤器状态
# Check LFS filter status
git lfs env

# 查看LFS日志
# View LFS logs
git lfs logs

# 查看LFS配置
# View LFS configuration
git lfs config
```

---

## 📁 如何正常使用Git LFS

## 📁 How to Use Git LFS Normally

### 添加新的大文件

### Adding New Large Files

当你要添加新的大文件（如图片）时，只需像往常一样使用 `git add`：

When you want to add new large files (like images), simply use `git add` as usual:

```bash
# 添加新的图片文件
# Add new image files
git add worlds/beastshield-reforged/original/images/main-story/new-image.png

# 或者添加所有更改
# Or add all changes
git add .

# 提交更改
# Commit changes
git commit -m "添加新的故事图片"
git commit -m "Add new story images"

# 推送到远程仓库
# Push to remote repository
git push
```

Git LFS会自动处理大文件的上传。你会看到类似下面的输出：

Git LFS will automatically handle the upload of large files. You will see output similar to:

```
Uploading LFS objects: 100% (1/1), 5.2 MB | 1.2 MB/s, done.
```

### 克隆包含LFS文件的项目

### Cloning a Project Containing LFS Files

```bash
# 正常克隆项目
# Clone the project normally
git clone https://github.com/your-username/beastkin-universe.git

# LFS文件会作为指针下载，实际内容可能需要单独拉取
# LFS files will be downloaded as pointers, actual content may need to be pulled separately

# 如果需要立即获取所有LFS文件内容
# If you need to get all LFS file content immediately
cd beastkin-shield-universe
git lfs pull
```

### 更新包含LFS文件的项目

### Updating a Project Containing LFS Files

```bash
# 正常拉取更新
# Pull updates normally
git pull

# LFS文件会自动处理，但如果你遇到问题可以手动拉取
# LFS files are handled automatically, but you can manually pull if you encounter issues
git lfs pull
```

---

## ⚠️ 注意事项和常见问题

## ⚠️ Precautions and Common Issues

### 问题1：LFS文件显示为指针文件

### Problem 1: LFS Files Appear as Pointer Files

**现象**：LFS文件在Git仓库中显示为小文本文件（约130字节），而不是实际的大文件。
**Symptom**: LFS files appear as small text files (about 130 bytes) in the Git repository instead of
actual large files.

**原因**：Git LFS过滤器未正确安装或未启用。
**Cause**: Git LFS filter is not correctly installed or enabled.

**解决方案**：

```bash
# 确保已安装Git LFS
# Make sure Git LFS is installed
git lfs version

# 在项目目录中初始化Git LFS
# Initialize Git LFS in the project directory
git lfs install

# 拉取LFS文件
# Pull LFS files
git lfs pull
```

### 问题2：`git push` 失败，显示LFS错误

### Problem 2: `git push` Fails with LFS Error

**现象**：推送时出现错误，如 `Upload to [remote] failed` 或 `batch request failed`。
**Symptom**: Errors during push, such as `Upload to [remote] failed` or `batch request failed`.

**解决方案**：

1. 检查网络连接
2. 检查Git LFS配额是否已满
3. 尝试单独推送LFS文件：
   ```bash
   git lfs push origin main
   ```

### 问题3：无法克隆或拉取LFS文件

### Problem 3: Cannot Clone or Pull LFS Files

**现象**：克隆或拉取时，LFS文件无法下载。
**Symptom**: LFS files cannot be downloaded during cloning or pulling.

**解决方案**：

```bash
# 检查Git LFS是否已安装
# Check if Git LFS is installed
git lfs version

# 确保已初始化Git LFS
# Make sure Git LFS is initialized
git lfs install

# 手动拉取LFS文件
# Manually pull LFS files
git lfs pull

# 如果仍然失败，尝试指定远程和分支
# If still failing, try specifying remote and branch
git lfs pull origin main
```

### 问题4：`.gitattributes` 文件未生效

### Problem 4: `.gitattributes` File Not Taking Effect

**现象**：新添加的大文件没有被Git LFS跟踪。
**Symptom**: Newly added large files are not tracked by Git LFS.

**解决方案**：

1. 确保 `.gitattributes` 文件已提交：
   ```bash
   git add .gitattributes
   git commit -m "更新.gitattributes文件"
   git commit -m "Update .gitattributes file"
   ```

2. 检查文件是否匹配 `.gitattributes` 中的模式：
   ```bash
   # 查看文件是否被LFS跟踪
   # Check if file is tracked by LFS
   git check-attr filter -- path/to/file.png
   ```

3. 重新跟踪文件：
   ```bash
   # 如果文件已提交但未被LFS跟踪，需要重新跟踪
   # If file is already committed but not tracked by LFS, need to re-track
   git rm --cached path/to/file.png
   git add path/to/file.png
   ```

### 问题5：仓库大小仍然很大

### Problem 5: Repository Size is Still Large

**现象**：即使使用了Git LFS，仓库大小仍然增长很快。
**Symptom**: Even with Git LFS, repository size is still growing quickly.

**解决方案**：

1. 检查是否有大文件未被Git LFS跟踪：
   ```bash
   # 查找仓库中的大文件
   # Find large files in repository
   git lfs ls-files

   # 使用其他工具查找大文件
   # Use other tools to find large files
   git rev-list --objects --all | grep "$(git verify-pack -v .git/objects/pack/*.idx | sort -k 3 -n | tail -10 | awk '{print$1}')"
   ```

2. 确保所有大文件类型都已添加到 `.gitattributes`：
   ```bash
   # 查看当前跟踪的文件类型
   # View currently tracked file types
   git lfs track
   ```

3. 迁移历史文件到Git LFS（高级操作）：
   ```bash
   # 警告：这会重写Git历史，只应在必要时使用
   # Warning: This rewrites Git history, only use when necessary
   git lfs migrate import --everything --include="*.png,*.jpg"
   ```

---

## 🔄 Git LFS工作流程最佳实践

## 🔄 Git LFS Workflow Best Practices

### 1. 设置适当的文件大小阈值

### 1. Set Appropriate File Size Thresholds

建议使用Git LFS管理超过100KB的二进制文件：

It is recommended to use Git LFS for binary files larger than 100KB:

```bash
# 跟踪所有超过特定大小的文件
# Track all files larger than a specific size
git lfs track "*.{png,jpg,jpeg,gif,psd}" --size-threshold=100kb
```

### 2. 定期清理LFS缓存

### 2. Regularly Clean LFS Cache

```bash
# 查看可以清理的LFS对象
# View LFS objects that can be cleaned
git lfs prune --dry-run

# 实际清理
# Actually clean
git lfs prune
```

### 3. 备份LFS对象

### 3. Backup LFS Objects

由于LFS文件存储在单独的服务器上，建议定期备份重要的大文件：

Since LFS files are stored on a separate server, it is recommended to regularly back up important
large files:

```bash
# 导出所有LFS对象到本地目录
# Export all LFS objects to local directory
git lfs fetch --all
```

### 4. 团队协作注意事项

### 4. Team Collaboration Precautions

确保团队所有成员都安装了Git LFS：

Ensure all team members have Git LFS installed:

```bash
# 将Git LFS安装步骤添加到项目文档
# Add Git LFS installation steps to project documentation

# 在README.md中添加Git LFS要求
# Add Git LFS requirements to README.md
```

---

## 📊 监控Git LFS使用情况

## 📊 Monitoring Git LFS Usage

### 查看LFS文件统计

### View LFS File Statistics

```bash
# 查看由Git LFS跟踪的文件列表
# View list of files tracked by Git LFS
git lfs ls-files

# 查看LFS文件的总大小
# View total size of LFS files
git lfs ls-files | awk '{sum += $2} END {print sum}'

# 按文件类型统计
# Statistics by file type
git lfs ls-files | awk '{print $3}' | awk -F. '{print $NF}' | sort | uniq -c
```

### 检查LFS存储使用量

### Check LFS Storage Usage

```bash
# 查看本地LFS对象存储
# View local LFS object storage
du -sh .git/lfs/objects/

# 查看所有LFS对象的总大小
# View total size of all LFS objects
git lfs ls-files --all | awk '{sum+=$2} END {print sum/1024/1024 " MB"}'
```

---

## 🆘 故障排除

## 🆘 Troubleshooting

### 如果所有方法都失败

### If All Methods Fail

1. **重新安装Git LFS**：
   ```bash
   # 卸载Git LFS
   # Uninstall Git LFS
   # Windows: 通过控制面板卸载
   # Windows: Uninstall via Control Panel
   # macOS: brew uninstall git-lfs
   # Linux: sudo apt-get remove git-lfs
   
   # 重新安装Git LFS
   # Reinstall Git LFS
   ```

2. **重新初始化Git LFS**：
   ```bash
   # 移除LFS配置
   # Remove LFS configuration
   git config --local --unset filter.lfs.process
   git config --local --unset filter.lfs.required
   git config --local --unset filter.lfs.clean
   git config --local --unset filter.lfs.smudge
   
   # 重新初始化
   # Reinitialize
   git lfs uninstall
   git lfs install
   ```

3. **手动下载LFS文件**：
   ```bash
   # 如果Git LFS完全无法工作，可以尝试手动下载
   # If Git LFS completely fails, try manual download
   # 1. 从Git仓库下载指针文件
   # 1. Download pointer files from Git repository
   # 2. 解析指针文件获取实际文件URL
   # 2. Parse pointer files to get actual file URLs
   # 3. 使用curl或wget下载文件
   # 3. Download files using curl or wget
   ```

---

## 📚 参考资料和进一步学习

## 📚 References and Further Learning

### 官方文档 / Official Documentation

- Git LFS官方文档：https://git-lfs.github.com/
- Git LFS GitHub仓库：https://github.com/git-lfs/git-lfs
- Git LFS使用指南：https://github.com/git-lfs/git-lfs/wiki/Tutorial

### 有用的命令备忘单 / Useful Command Cheat Sheet

```bash
# 安装和初始化
# Installation and initialization
git lfs install               # 初始化Git LFS
git lfs version               # 查看版本

# 文件跟踪
# File tracking
git lfs track "*.psd"         # 跟踪新文件类型
git lfs untrack "*.psd"       # 停止跟踪文件类型
git lfs track                 # 查看当前跟踪模式

# 日常使用
# Daily use
git lfs pull                  # 拉取LFS文件
git lfs push origin main      # 推送LFS文件
git lfs ls-files              # 列出LFS文件

# 维护
# Maintenance
git lfs prune                 # 清理LFS缓存
git lfs prune --dry-run       # 预览可清理的内容
git lfs fsck                  # 检查LFS完整性

# 故障排除
# Troubleshooting
git lfs status                # 查看状态
git lfs env                   # 查看环境变量
git lfs logs                  # 查看日志
```

---

## 🎯 总结

## 🎯 Summary

Git LFS是管理大型二进制文件的强大工具。通过正确配置和使用Git LFS，你可以：

1. 保持Git仓库的小巧和高效
2. 轻松管理图像、音频、视频等大文件
3. 与团队成员顺畅协作
4. 避免Git处理大文件时的性能问题

记住，成功使用Git LFS的关键是：

1. 确保所有协作者都安装了Git LFS
2. 正确配置 `.gitattributes` 文件
3. 定期维护和清理LFS缓存
4. 监控LFS存储使用情况

现在你已经掌握了Git LFS的完整知识，可以愉快地管理项目中的大文件了！

Git LFS is a powerful tool for managing large binary files. By properly configuring and using Git
LFS, you can:

1. Keep Git repositories small and efficient
2. Easily manage large files like images, audio, video, etc.
3. Collaborate smoothly with team members
4. Avoid performance issues when Git handles large files

Remember, the keys to successfully using Git LFS are:

1. Ensure all collaborators have Git LFS installed
2. Properly configure the `.gitattributes` file
3. Regularly maintain and clean LFS cache
4. Monitor LFS storage usage

Now that you have complete knowledge of Git LFS, you can happily manage large files in your project!

---

## ❓ 需要帮助？

## ❓ Need Help?

如果你在使用Git LFS时遇到问题：

1. 查看Git LFS官方文档：https://git-lfs.github.com/
2. 在项目讨论区提问，提供详细的错误信息
3. 检查项目的 `.gitattributes` 文件配置
4. 确保你的Git LFS版本是最新的

If you encounter problems while using Git LFS:

1. Check Git LFS official documentation: https://git-lfs.github.com/
2. Ask questions in the project discussion area, providing detailed error information
3. Check the project's `.gitattributes` file configuration
4. Ensure your Git LFS version is up to date

**快乐编码！ / Happy coding!**