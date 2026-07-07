# 变更日志

## 2026-07-07 — 拆分 v1/v2 版本并启动 v2-expanded 重写
- **变更类型**: refactor + feat
- **影响范围**: chapters/、README.md、metadata.yaml、.process/plans/、.process/settings/、.process/CURRENT_STATUS.md
- **原因**: 区分旧版 20 章扩写版与新版重写版，按 adaptation-work-template 补齐项目管理文件
- **具体内容**:
  - 将原有 `chapters/ch-01.md` ~ `ch-20.md` 及英文版迁入 `chapters/v1-20ch/`
  - 新建 `chapters/v2-expanded/`，基于原作三章结构重写为 5 章，强化感官细节、慢节奏与人物互动
  - 更新 README 版本索引，新增 v2 章节列表
  - 更新 metadata.yaml 版本历史
  - 新增 `.process/plans/v2-rewrite-plan.md`、`.process/settings/story-setting.md`、`.process/CURRENT_STATUS.md`
  - 按模板补齐 `notes/`、`images/`、`.process/archive/`、`.process/plans/README.md`

## 2026-05-07 — 规范重构迁移
- **变更类型**: adjust
- **影响范围**: .process/ 目录结构
- **原因**: 遵循 Beastkin Universe v3.0 规范，统一过程文件管理
- **具体内容**: 将散落的过程文件迁入 .process/ 目录，建立标准化创作留痕结构
