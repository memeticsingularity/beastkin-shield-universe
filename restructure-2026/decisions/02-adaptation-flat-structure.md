---
name: Adaptation Works Flat Structure
description: Remove main/side subdirectories from adaptation-works chaptered-stories
type: project
---

# Decision: 改编作品分章故事扁平化

**日期**: 2026-05-07
**状态**: Approved
**决策者**: memetic-singularity

## 决策

改编作品的分章故事**不再区分** `main/` 和 `side/` 物理子目录，全部直接平铺于：

```
worlds/{world}/adaptation-works/chaptered-stories/
```

作品的类型（主线/支线）仅通过编码中的 `cm` / `cs` 标识。

## 理由

1. 编码体系 v2.3.0 已通过 `cm` (chaptered-main) 和 `cs` (chaptered-side) 自包含类型信息
2. 原创档案区分 `main/side` 是因为涉及世界观核心叙事的物理隔离；改编作品不存在晋升前的"核心叙事"问题
3. 减少目录层级，提高可浏览性

## 迁移影响

以下目录中的作品需上移至 `chaptered-stories/` 根级：

- `beastshield/adaptation-works/chaptered-stories/side/bs-a-cs-2-auction-show`
- `beastshield/adaptation-works/chaptered-stories/side/bs-a-cs-3-songguo-story`
- `beastshield/adaptation-works/chaptered-stories/side/bs-a-cs-s1-leishan-resurrection`
- `empire-kik-soldiers/adaptation-works/chaptered-story/side/bs-a-c-1-short-stories`
- `empire-kik-soldiers/adaptation-works/chaptered-story/side/eks-o-cm-1-recall-protocol`
- `empire-kik-soldiers/adaptation-works/chaptered-story/side/eks-o-cm-2-dog-soldier-dreams`

完成后删除空的 `side/` 目录。
