# Beastkin Universe 规范重构迁移指南

> 本文档指导如何从旧规范体系迁移到新规范体系（v3.0）。

---

## 迁移总览

| 旧文档/模板 | 新文档/模板 | 状态 |
|------------|------------|------|
| `docs/project-structure-guide.md` | `docs/spec/01-project-structure.md` | 已替代 |
| `docs/work-naming-guide-chinese.md` | `docs/spec/02-work-coding.md` + `03-intermediate-documents.md` | 已拆分替代 |
| `docs/metadata-guide.md` | `docs/spec/04-metadata.md` | 已替代 |
| `docs/universal-story-template-guide-chinese.md` | `docs/spec/11-story-format.md` + `templates/chapter.md` | 已拆分替代 |
| `templates/beastshield-writing-guidelines.md` | `docs/spec/12-content-guidelines.md` | 已精简替代 |
| `templates/metadata-template.yaml` | `templates/metadata.yaml` | 已瘦身替代 |
| `templates/universal-story-template-chinese.md` | `templates/chapter.md` + `short-story.md` | 已拆分替代 |

---

## 关键变更速查

### 1. 编码规则无变化
`[世界观]-[性质]-[形式]-[序号]-[标识名]` 的语法保持与 v2.3.0 一致，无需重新编码已有作品。

### 2. 改编作品目录扁平化
**变更前**：
```
adaptation-works/chaptered-stories/side/bs-a-cs-2-auction-show
```

**变更后**：
```
adaptation-works/chaptered-stories/bs-a-cs-2-auction-show
```

### 3. 引入 `.process/` 目录
**变更前**：过程文件散落在作品目录中：
```
06-moying/
├── design/
└── history/
```

**变更后**：过程文件统一归入 `.process/`：
```
bs-a-cm-?-moying/
└── .process/
    ├── CHANGELOG.md
    ├── design/
    └── history/
```

### 4. 版本文件命名统一
**变更前**：`README_v1.md`, `plan_v2.md`
**变更后**：`README-v1.0.md`, `plan-v2.0.md`

### 5. 双语作品内部聚合
**变更前**：作品目录内分设 `chinese/` `english/` 子目录
**变更后**：中文文件放根级，英文放 `en/` 子目录

### 6. 中间文档规范新增
新增对以下文件的明确格式要求：
- `README.md` 的强制 section
- `.process/CHANGELOG.md` 变更日志格式
- `.process/ai-discussion/INDEX.md` 讨论索引格式
- `.process/archive/*.obsolete.md` 弃用说明格式

---

## 迁移步骤

### 步骤 1：阅读新规范（5 分钟）
按以下顺序阅读：
1. `docs/spec/01-project-structure.md` — 了解新目录树
2. `docs/spec/03-intermediate-documents.md` — 了解中间文档要求

### 步骤 2：为现有作品补充 `.process/`（每作品 5 分钟）

对已有散落过程文件的作品：
1. 创建 `.process/` 目录
2. 将 `ai/` `draft/` `design/` `history/` 等移入 `.process/`
3. 创建 `.process/CHANGELOG.md`，写入首条记录：
   ```markdown
   ## 2026-05-07 — 规范重构迁移
   - **变更类型**: adjust
   - **影响范围**: .process/ 目录结构
   - **原因**: 遵循 Beastkin Universe v3.0 规范，统一过程文件管理
   ```

### 步骤 3：补充缺失的 `metadata.yaml`（每作品 3 分钟）

复制 `templates/metadata.yaml`，填写必填字段。

### 步骤 4：规范化 `README.md`（每作品 5 分钟）

对照 `templates/README.md` 模板，补充缺失的 section。

---

## 旧规范文档处理

旧规范文档**保留但标记为 deprecated**，在头部添加：

```markdown
> **Deprecated**: 本文档已被 v3.0 规范替代。请参阅 `docs/spec/` 目录下的新规范文档。
```

过渡期：6 个月。之后评估是否删除。

---

*版本: 1.0*
*日期: 2026-05-07*
