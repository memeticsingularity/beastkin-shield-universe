# 变更日志 / Changelog

> 记录作品目录内所有重大变更。Git 记录 *what*，CHANGELOG 记录 *why*。
> 每次变更对应一次条目，小修小补不必记录。

---

## 格式速查 / Format Quickref

```markdown
## {YYYY-MM-DD} — {一句话摘要}

- **变更类型**: {create|rewrite|adjust|deprecate|promote}
- **影响范围**: {文件名列表}
- **原因**: {为什么做这次变更}
- **具体内容**: {改了什么}
- **参考讨论**: {关联的 ai-discussion 文件，可选}
```

**规则提醒**：
- 二级标题 `##` 与列表之间**必须有空行**
- 每条变更条目之间用 `---` 分隔
- 变更类型只能选 5 种之一

---

## 2026-06-09 — 项目初始创建

- **变更类型**: create
- **影响范围**: `chapters/ch-1.md` ~ `chapters/ch-10.md`, `README.md`, `metadata.yaml`
- **原因**: 新建魔影（雨禾版）改编项目
- **具体内容**: 从雨禾提供的 txt 源文件中提取并分章，完成 10 章正文初稿

---

## 2026-06-10 — 项目结构按 v3.0 模板规范化

- **变更类型**: adjust
- **影响范围**: `.process/*`, `README.md`, `metadata.yaml`, `chapters/*`
- **原因**: 项目结构未遵循 adaptation-work-template v3.0 规范，缺少多个标准目录与文件
- **具体内容**:
  - 创建 `.process/CURRENT_STATUS.md`、`.process/ai-discussion/INDEX.md`、`.process/archive/README.md`、`.process/plans/README.md`、`.process/settings/story-setting.md`
  - 创建 `images/README.md`、`notes/README.md`
  - 章节文件重命名为零填充格式（`ch-01-locker-room.md` 等）
  - 更新所有章节内部导航链接
  - 重写 `README.md` 以匹配模板结构（新增内容标签、主要角色、专属设定、关联作品、创作留痕区块）
  - 修复 `metadata.yaml` 中的 `work_type` 为有效枚举值
  - 将对比分析文档移至 `.process/ai-discussion/`
- **参考讨论**: [2026-06-10-comparison-with-original.md](ai-discussion/2026-06-10-comparison-with-original.md)

---

*模板版本: v3.0 · 规范: docs/spec/03-intermediate-documents.md*
