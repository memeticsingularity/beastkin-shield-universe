---
name: Process Files Directory
description: Introduce .process/ directory to isolate creation process files from final works
type: project
---

# Decision: 引入 .process/ 目录隔离创作过程文件

**日期**: 2026-05-07
**状态**: Approved
**决策者**: memetic-singularity

## 决策

每个作品目录下创建 `.process/` 目录，用于存放所有非最终正文的创作过程文件。

`.process/` 内部结构：

```
.process/
├── CHANGELOG.md          # 作品级变更日志（为什么改）
├── ai-discussion/
│   ├── INDEX.md          # AI 讨论记录索引（主题/结论/落实状态）
│   └── 2026-01-15-scene-3-review.md
├── plan/
│   ├── v2-outline.md
│   └── v1-character-arc.md
├── history/
│   └── 2026-01-10-ch1-rewrite.md
├── design/
│   └── combat-system.md
└── archive/
    ├── ch-1-v1.0.md
    └── ch-1-v1.0.obsolete.md   # 弃用原因说明（必须伴随旧版本）
```

## 命名规范

- `ai-discussion/`: `<日期>-<主题>.md`
- `plan/`: `<版本>-<类型>.md`
- `history/`: `<日期>-<事件>.md`
- `design/`: `<主题>-<类型>.md`
- `archive/`: 旧版本文件 + 同名的 `.obsolete.md` 弃用说明

## 三层留痕机制（新增）

本项目要求**内部自带叙事性历史**，与 Git 版本控制互补。Git 记录 `what`，项目内部记录 `why`。

### 第一层：CHANGELOG.md — 作品级变更日志

位于 `.process/CHANGELOG.md`，记录每次对作品目录内文件的重大变更。

**格式**：
```markdown
## 2026-05-07 — 重写第三章结尾
- **变更类型**: rewrite
- **影响范围**: ch-3.md
- **原因**: 原版本（v1.0）中主角转变过于突兀，缺乏情感铺垫
- **具体内容**: 增加 800 字内心独白，放缓死亡节奏
- **参考讨论**: ai-discussion/2026-05-06-protagonist-arc-review.md
```

**变更类型枚举**：`create`（新建）、`rewrite`（重写）、`adjust`（调整）、`deprecate`（弃用）、`promote`（晋升）

### 第二层：archive/ + .obsolete.md — 版本归档与弃用说明

旧版本文件迁入 `archive/` 时，**必须**创建同名的 `.obsolete.md` 文件，说明：

```markdown
# ch-1-v1.0 弃用说明

**弃用日期**: 2026-05-07
**替代版本**: ch-1-v2.0.md

## 为什么弃用
原版本场景节奏过快，从潜入到击杀仅 500 字，缺乏感官沉浸。

## 具体不足
- 目标角色没有背景铺垫
- 缺少嗅觉描写（汗味、环境气味）
- 死亡过程缺少阶段分解

## 新版本改进
- 增加目标角色的日常闪回（约 600 字）
- 加入环境气味和体温传递描写
- 将死亡过程拆分为 4 个阶段

## 是否可复用
部分内容（潜入路线描写）可在支线故事中复用。
```

### 第三层：ai-discussion/INDEX.md — AI 讨论索引

AI 讨论记录可能分散且数量多，通过 `INDEX.md` 建立总览：

```markdown
# AI 讨论索引

| 日期 | 主题 | 核心结论 | 落实状态 | 关联文件 |
|------|------|---------|---------|---------|
| 2026-01-15 | Scene 3 节奏审查 | 需要增加 300 字内心铺垫 | 已落实 | ch-3.md |
| 2026-01-20 | 角色命名讨论 | 主角改名为"豕牙" | 已落实 | metadata.yaml |
| 2026-02-01 | 结局方向分歧 | 保留开放式结局，不做修改 | 已否决 | — |
```

**落实状态枚举**：`已落实` / `部分落实` / `待落实` / `已否决` / `已归档`

## 理由

1. 点号前缀在文件系统中表示"隐藏/工作区"，与正文物理隔离
2. Git 正常追踪，不需要额外 `.gitignore` 配置
3. 读者进入作品目录时，第一眼看到的只有 README、metadata 和章节文件
4. 统一所有分散的 `ai/`, `draft/`, `design/`, `history/`, `research/` 等命名

## 迁移影响

14 个作品目录存在散落的过程子目录，需统一迁入 `.process/`。详见 `AUDIT-REPORT.md` 第 9 节。
