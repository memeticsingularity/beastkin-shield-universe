# Git身份检查与设置完整指南

# Complete Git Identity Check and Setup Guide

---

## 📖 前言 / Introduction

欢迎参与 **Beastkin Shield Universe** 项目！为了确保项目协作顺利进行，正确设置Git用户信息至关重要。

Welcome to the **Beastkin Shield Universe** project! To ensure smooth project collaboration, correctly setting your Git
user information is crucial.

当你在项目中进行提交时，Git会记录你的姓名和邮箱，这些信息会永久保存在提交历史中。如果设置错误，可能会导致提交者身份混乱，影响项目管理的清晰度。

When you make commits in the project, Git records your name and email, which are permanently stored in the commit
history. Incorrect settings can lead to confusion about commit authorship, affecting the clarity of project management.

本指南将详细解释如何检查、设置和修正Git用户信息，特别适合Git新手使用。我们假设你对Git有一定了解，但可能对配置管理不太熟悉。

This guide will explain in detail how to check, set, and correct Git user information, especially suitable for Git
beginners. We assume you have some understanding of Git but may not be familiar with configuration management.

---

## 🎯 为什么要检查Git用户信息？

## 🎯 Why Check Git User Information?

**简单来说**：确保每次提交都正确地标注你的身份，让其他协作者知道是谁做了哪些修改。

**In simple terms**: Ensure every commit correctly identifies you, so other collaborators know who made which changes.

**可能出现的问题**：

- 提交显示为其他人的名字
- 提交显示错误的邮箱地址
- 提交显示为系统默认的匿名用户（如 "unknown" 或 "root"）

**Potential issues**:

- Commits showing someone else's name
- Commits showing wrong email address
- Commits showing as system default anonymous user (e.g., "unknown" or "root")

---

## 🔍 如何检查当前的Git用户信息？

## 🔍 How to Check Current Git User Information?

有3种主要方法，从简单到全面：

There are 3 main methods, from simple to comprehensive:

### 方法1：查看当前项目配置（最常用）

### Method 1: Check Current Project Configuration (Most Common)

#### 步骤1：打开终端/命令提示符

#### Step 1: Open Terminal/Command Prompt

在Windows上，可以按 `Win+R`，输入 `cmd` 后按回车。
在Mac上，按 `Cmd+空格`，输入 `terminal` 后按回车。

On Windows, press `Win+R`, type `cmd` and press Enter.
On Mac, press `Cmd+Space`, type `terminal` and press Enter.

#### 步骤2：导航到你的项目文件夹

#### Step 2: Navigate to Your Project Folder

```bash
# 使用 cd 命令进入项目目录
# Use cd command to enter project directory
cd /path/to/beastkin-shield-universe
```

#### 步骤3：运行Git配置检查命令

#### Step 3: Run Git Configuration Check Commands

```bash
# 查看用户名
# Check username
git config user.name

# 查看邮箱
# Check email
git config user.email

# 查看所有配置
# Check all configurations
git config --list
```

**输出示例 / Example Output:**

```
user.name=张三
user.email=zhangsan@example.com
```

### 方法2：查看最近一次提交的信息

### Method 2: Check the Most Recent Commit Information

```bash
# 查看最近一次提交的详细信息
# Check detailed information of the most recent commit
git log -1 --pretty=format:"作者: %an <%ae>%n提交者: %cn <%ce>%n时间: %cd%n消息: %s"
```

**输出示例 / Example Output:**

```
作者: 张三 <zhangsan@example.com>
提交者: 张三 <zhangsan@example.com>
时间: Tue May 7 14:30:22 2024 +0800
消息: 更新第15章内容
```

### 方法3：完整配置检查（推荐）

### Method 3: Complete Configuration Check (Recommended)

```bash
# 显示所有配置及其来源
# Show all configurations and their sources
git config --list --show-origin
```

这个命令会显示每个配置项来自哪个文件，让你知道哪些设置覆盖了其他设置。

This command shows which file each configuration item comes from, letting you know which settings override others.

**重要提示**：Git配置有优先级：

1. 本地仓库配置（当前项目文件夹） >
2. 全局配置（用户主目录） >
3. 系统配置（系统范围）

**Important Note**: Git configuration has priority:

1. Local repository configuration (current project folder) >
2. Global configuration (user home directory) >
3. System configuration (system-wide)

---

## ⚙️ 如何设置正确的Git用户信息？

## ⚙️ How to Set Correct Git User Information?

### 情况1：为整个项目设置（推荐）

### Case 1: Set for the Entire Project (Recommended)

如果你希望在整个 **Beastkin Shield Universe** 项目中使用相同的用户信息：

If you want to use the same user information throughout the entire **Beastkin Shield Universe** project:

```bash
# 进入项目根目录
# Enter project root directory
cd /path/to/beastkin-shield-universe

# 设置用户名
# Set username
git config user.name "你的姓名"
git config user.name "Your Name"

# 设置邮箱
# Set email
git config user.email "你的邮箱@example.com"
git config user.email "your.email@example.com"
```

### 情况2：为特定子项目设置

### Case 2: Set for Specific Sub-project

如果你需要在不同的子项目中使用不同的身份，可以进入相应目录设置：

If you need to use different identities in different sub-projects, you can enter the corresponding directory to set:

```bash
# 进入子项目目录，例如兽盾新纪元
# Enter sub-project directory, e.g., Beastshield Reforged
cd /path/to/beastkin-shield-universe/worlds/beastshield-reforged

# 设置该子项目的用户名
# Set username for this sub-project
git config user.name "该子项目专用姓名"
git config user.name "Name for this sub-project"

# 设置该子项目的邮箱
# Set email for this sub-project
git config user.email "子项目邮箱@example.com"
git config user.email "subproject.email@example.com"
```

### 情况3：为所有Git项目设置（全局配置）

### Case 3: Set for All Git Projects (Global Configuration)

如果你希望在所有Git项目中使用相同的用户信息（注意：这会覆盖项目特定设置）：

If you want to use the same user information in all Git projects (Note: this will override project-specific settings):

```bash
# 设置全局用户名
# Set global username
git config --global user.name "你的姓名"
git config --global user.name "Your Name"

# 设置全局邮箱
# Set global email
git config --global user.email "你的邮箱@example.com"
git config --global user.email "your.email@example.com"
```

### 情况4：覆盖系统默认设置

### Case 4: Override System Default Settings

某些情况下，系统可能有默认设置，你可以检查并覆盖（需要管理员权限）：

In some cases, the system may have default settings that you can check and override (requires admin privileges):

```bash
# 查看系统级配置
# Check system-level configuration
git config --system --list

# 设置系统级配置（需要管理员权限）
# Set system-level configuration (requires admin privileges)
git config --system user.name "默认用户名"
git config --system user.name "Default User Name"
```

---

## ❗ 常见问题与解决方案

## ❗ Common Issues and Solutions

### 问题1：提交显示错误的名字或邮箱

### Problem 1: Commits Show Wrong Name or Email

**原因**：可能是你在不同的电脑或项目中使用了不同的配置，或者全局配置覆盖了本地配置。
**Cause**: You may have used different configurations on different computers or projects, or global configuration
overrides local configuration.

**解决方案**：

1. 按照上面的方法检查当前项目的配置
2. 如果需要修改，使用 `git config user.name "正确名字"` 修正
3. 如果需要删除错误的配置：`git config --unset user.name`

**Solution**:

1. Check the current project configuration as described above
2. If modification is needed, use `git config user.name "Correct Name"` to correct it
3. If you need to remove wrong configuration: `git config --unset user.name`

### 问题2：Git提示"Please tell me who you are"

### Problem 2: Git Prompts "Please tell me who you are"

**原因**：Git没有找到有效的用户信息。
**Cause**: Git cannot find valid user information.

**解决方案**：

```bash
# 按照提示设置用户信息
# Set user information as prompted
git config --global user.email "你的邮箱@example.com"
git config --global user.email "your.email@example.com"
git config --global user.name "你的名字"
git config --global user.name "Your Name"
```

### 问题3：不想暴露真实邮箱

### Problem 3: Don't Want to Expose Real Email

**解决方案**：

- GitHub用户：可以使用GitHub提供的noreply邮箱
- 其他平台：可以创建一个专门用于Git的邮箱

**Solution**:

- GitHub users: Can use GitHub's provided noreply email
- Other platforms: Can create an email specifically for Git

```bash
# GitHub用户示例 / Example for GitHub users
git config user.email "1234567+username@users.noreply.github.com"
```

### 问题4：项目有多个协作者，需要不同配置

### Problem 4: Multiple Collaborators on Project, Need Different Configurations

**解决方案**：为每个项目或子项目单独设置配置，而不是使用全局配置。

**Solution**: Set configuration separately for each project or sub-project, rather than using global configuration.

```bash
# 进入项目根目录设置主配置
# Enter project root directory to set main configuration
cd /path/to/beastkin-shield-universe
git config user.name "主项目姓名"
git config user.email "main@example.com"

# 进入子项目设置特定配置
# Enter sub-project to set specific configuration
cd /path/to/beastkin-shield-universe/worlds/beastshield-reforged
git config user.name "兽盾新纪元专用姓名"
git config user.email "beastshield@example.com"
```

### 问题5：如何查看特定目录的Git配置？

### Problem 5: How to Check Git Configuration for a Specific Directory?

**解决方案**：使用 `git config --show-origin` 查看配置来源。

**Solution**: Use `git config --show-origin` to check configuration sources.

```bash
# 查看当前目录的Git配置来源
# Check Git configuration sources for current directory
git config --list --show-origin | grep user
```

---

## 📱 在IntelliJ IDEA中设置

## 📱 Setting Up in IntelliJ IDEA

如果你使用IntelliJ IDEA，也可以通过图形界面设置：

If you use IntelliJ IDEA, you can also set it up through the graphical interface:

### 方法A：通过设置菜单

### Method A: Through Settings Menu

1. 打开 `File`（文件） → `Settings`（设置）
2. 导航到 `Version Control`（版本控制） → `Git`
3. 在 `Commit`（提交）部分，可以看到和修改用户名和邮箱

### 方法B：在提交界面查看

### Method B: Check in Commit Interface

1. 按 `Ctrl+K`（Windows/Linux）或 `Cmd+K`（Mac）打开提交界面
2. 在提交消息输入框下方，可以看到当前使用的作者信息

### 方法C：配置项目级别的Git设置

### Method C: Configure Project-level Git Settings

在IntelliJ IDEA中，可以为每个项目单独配置Git用户信息：

In IntelliJ IDEA, you can configure Git user information separately for each project:

1. 打开项目设置：`File` → `Settings` → `Version Control` → `Git`
2. 在 "Commit" 区域设置用户名和邮箱
3. 这些设置会保存在项目的 `.idea` 目录中，不影响其他项目

---

## 🔄 一次性检查脚本

## 🔄 One-time Check Script

创建一个检查脚本，快速获取完整信息。将以下内容保存为 `check-git-identity.sh`：

Create a check script to quickly get complete information. Save the following content as `check-git-identity.sh`:

```bash
#!/bin/bash
echo "=== Git身份信息检查报告 ==="
echo "=== Git Identity Check Report ==="
echo ""
echo "1. 当前生效配置 / Current Active Configuration:"
echo "   用户名 / Username: $(git config user.name)"
echo "   邮箱 / Email: $(git config user.email)"
echo ""
echo "2. 最近一次提交 / Most Recent Commit:"
git log --pretty=format:"   %h - %an <%ae> - %s" -1 2>/dev/null || echo "   暂无提交记录 / No commit history yet"
echo ""
echo "3. 配置来源 / Configuration Sources:"
echo "   本地项目配置 / Local Project Config:"
git config --local --list 2>/dev/null | grep -E "(user\.name|user\.email)" || echo "   未设置 / Not set"
echo ""
echo "   全局配置 / Global Config:"
git config --global --list | grep -E "(user\.name|user\.email)" || echo "   未设置 / Not set"
echo ""
echo "4. 下次提交将使用的信息 / Information for Next Commit:"
GIT_AUTHOR=$(git var GIT_AUTHOR_IDENT 2>/dev/null || echo "未设置 / Not set")
echo "   作者 / Author: $GIT_AUTHOR"
```

然后运行：

Then run:

```bash
# 给予执行权限 / Give execute permission
chmod +x check-git-identity.sh

# 运行脚本 / Run script
./check-git-identity.sh
```

或者，如果你使用的是Windows系统，可以创建一个批处理文件 `check-git-identity.bat`：

Alternatively, if you're using Windows, create a batch file `check-git-identity.bat`:

```batch
@echo off
echo === Git身份信息检查报告 ===
echo === Git Identity Check Report ===
echo.
echo 1. 当前生效配置 / Current Active Configuration:
git config user.name > nul && (
    echo    用户名 / Username: 
    git config user.name
) || echo    用户名未设置 / Username not set
echo.
git config user.email > nul && (
    echo    邮箱 / Email: 
    git config user.email
) || echo    邮箱未设置 / Email not set
echo.
echo 2. 最近一次提交 / Most Recent Commit:
git log --pretty=format:"   %%h - %%an <%%ae> - %%s" -1 2>nul || echo "   暂无提交记录 / No commit history yet"
echo.
echo 3. 配置来源 / Configuration Sources:
echo   本地项目配置 / Local Project Config:
git config --local --list 2>nul | findstr /r /c:"user\.name" /c:"user\.email" || echo "   未设置 / Not set"
echo.
echo   全局配置 / Global Config:
git config --global --list 2>nul | findstr /r /c:"user\.name" /c:"user\.email" || echo "   未设置 / Not set"
```

---

## ✅ 最佳实践建议

## ✅ Best Practice Recommendations

1. **为项目设置专用身份**：特别是参与开源项目时，使用项目专用的用户名和邮箱
2. **使用一致的命名**：确保在所有平台上使用相同的用户名，便于识别
3. **定期检查**：尤其是在切换电脑或重装系统后，检查Git配置是否正确
4. **文档化配置**：将你的Git配置记录下来，便于恢复或在新设备上快速设置
5. **子项目独立配置**：如果参与多个子项目，考虑为每个子项目设置独立的身份

1. **Set dedicated identity for projects**: Especially when participating in open source projects, use project-specific
   usernames and emails
2. **Use consistent naming**: Ensure using the same username across all platforms for easy identification
3. **Check regularly**: Especially after switching computers or reinstalling the system, check if Git configuration is
   correct
4. **Document configuration**: Record your Git configuration for easy recovery or quick setup on new devices
5. **Independent configuration for sub-projects**: If participating in multiple sub-projects, consider setting
   independent identities for each sub-project

---

## 🎉 总结

## 🎉 Summary

正确设置Git用户信息是协作开发的基础。通过本指南，你应该能够：

1. 检查当前的Git配置，了解配置来源和优先级
2. 设置或修正用户信息，确保提交身份正确
3. 解决常见的配置问题，避免身份混淆

现在你可以自信地进行提交，确保你的贡献被正确记录了！

Properly setting Git user information is fundamental to collaborative development. Through this guide, you should be
able to:

1. Check current Git configuration, understand configuration sources and priorities
2. Set or correct user information, ensure commit identity is correct
3. Solve common configuration problems, avoid identity confusion

Now you can confidently make commits, ensuring your contributions are correctly recorded!

---

## 📞 需要帮助？

## 📞 Need Help?

如果你按照本指南操作后仍有问题，可以：

1. 在项目群组或讨论区中提问，附上你的配置检查结果
2. 查看Git官方文档：https://git-scm.com/book/en/v2
3. 搜索相关错误信息，通常Stack Overflow有详细解答
4. 向项目维护者寻求帮助，提供详细的错误信息和操作步骤

If you still have problems after following this guide, you can:

1. Ask in the project group or discussion area, attaching your configuration check results
2. Check Git official documentation: https://git-scm.com/book/en/v2
3. Search for related error messages, usually Stack Overflow has detailed answers
4. Seek help from project maintainers, providing detailed error information and operation steps

**记住**：正确的Git配置是顺利协作的第一步！花几分钟确保配置正确，可以避免后续的许多问题。

**Remember**: Correct Git configuration is the first step to smooth collaboration! Taking a few minutes to ensure
correct configuration can avoid many problems later.