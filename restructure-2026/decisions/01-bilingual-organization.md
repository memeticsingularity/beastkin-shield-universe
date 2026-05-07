---
name: Bilingual Work Organization
description: How Chinese and English versions of the same work are physically organized
type: project
---

# Decision: 双语作品物理组织方式

**日期**: 2026-05-07
**状态**: Approved
**决策者**: memetic-singularity

## 决策

采用 **"按作品聚合"** 方案：

- 一个作品编码对应一个目录
- 默认语言（中文）直接放在作品目录根级：`ch-1.md`, `ch-2.md`, ...
- 英文版放在作品目录内的 `en/` 子目录中：`en/ch-1.md`, `en/ch-2.md`, ...
- `metadata.yaml` 只需一份，位于作品目录根级

## 理由

1. 保持编码:目录的 1:1 映射关系，不破坏 `work.code` 必须等于文件夹名的约束
2. 元数据只需维护一份，避免中英文版本 metadata 不同步
3. 与现有 `original-archives/chinese/` / `original-archives/english/` 的语言分层不冲突：那是在世界观归档层面的分层，而作品目录内部是聚合的

## 迁移影响

以下目录需要重构：
- `bs-a-cs-1-shorts/chinese/` → 内容移出到根级
- `bs-a-cs-1-shorts/english/` → 内容移入 `en/`
- `bs-a-cs-3-all-clear/chinese/` → 同上
- `bs-a-cs-5-beastshield-chronicles/chinese/` → 同上
