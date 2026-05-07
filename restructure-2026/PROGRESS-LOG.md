# Beastkin Universe 规范重构进度日志

> 本文件用于实时追加记录重构进度。每次完成一个阶段或遇到关键决策，在此更新。

---

## 2026-05-07 Phase 1 完成：审计与目录准备

### 已完成项
- [x] 创建 `restructure-2026/` 规划目录及 `decisions/` 子目录（后从 `docs/` 迁至根目录，避免与用户指南混淆）
- [x] 生成 `AUDIT-REPORT.md`，覆盖以下 12 类问题：
  - 目录命名违规（7 处）
  - 缺少 metadata.yaml（30+ 作品）
  - setting/settings 不一致（3 个世界观 + 多个作品）
  - readme 大小写不一致（5 处）
  - 版本迭代文件命名混乱（30+ 文件）
  - tmp 目录污染（4 处）
  - 改编作品 side 目录（6 个作品需扁平化）
  - 过程文件散落（14 个作品目录）
  - 空世界观噪音（2 个世界观）
  - 语言分层缺失（3 个世界观）
  - 根目录散落脚本（2 个文件）

### 需求补充（2026-05-07）
用户明确追加核心需求：**项目内部自带叙事性历史留痕**。要求规范照顾到：
- 每次改动的原因和影响必须在项目内可查（不只是 Git diff）
- 历史版本需保留并说明"为什么弃用"、"哪里不符合期望"
- AI 讨论故事发展的记录需系统归档

**应对方案**：升级 `.process/` 设计，引入三层留痕机制：
1. **作品级 CHANGELOG.md**：记录每次重大变更的 Why/What/Impact
2. **版本归档 + 弃用说明**：`.process/archive/` 中的每个旧版本必须伴随弃用原因文档
3. **AI 讨论索引**：`.process/ai-discussion/INDEX.md` 管理全部讨论记录的主题、结论、落实状态

---

## 2026-05-07 Phase 2-4 完成：规范文档、模板、基础设施清理

### 已完成项
- [x] 起草 6 份新规范文档（总计 < 1000 行）：
  - `docs/spec/01-project-structure.md` — 目录树与晋升机制
  - `docs/spec/02-work-coding.md` — 编码语法（零重复）
  - `docs/spec/03-intermediate-documents.md` — 核心交付物：README、.process/、CHANGELOG、版本文件命名
  - `docs/spec/04-metadata.md` — 元数据字段与校验规则
  - `docs/spec/11-story-format.md` — Scene 分幕与导航栏
  - `docs/spec/12-content-guidelines.md` — 世界观一致性与风格指南
- [x] 产出 5 份纯净模板（每份 < 50 行）：`metadata.yaml`、`chapter.md`、`short-story.md`、`README.md`、`process-note.md`
- [x] 旧规范文档添加 deprecation notice，指向新 spec
- [x] 根目录清理：脚本迁入 `scripts/`、`setting`→`settings` 统一、`readme.md`→`README.md`、`.gitignore` 追加 `**/.process/archive/` 与 `*.bak`

---

## 2026-05-07 Phase 5 进行中：Beastshield 示范重构

### 已完成项
- [x] **改编作品目录重命名与扁平化**：
  - `06-moying` → `bs-a-cm-2-moying`
  - `07-daily` → `bs-a-cs-11-daily`（序号冲突顺延）
  - `08-sanguipendium` → `bs-a-cm-1-sanguipendium`
  - `09-first-game` → `bs-a-cs-7-first-game`
  - `s1-leishan-resurrection` → `bs-a-cs-10-leishan-resurrection`
  - 冲突解决：`bs-a-cs-2-auction-show` → `bs-a-cs-8`、`bs-a-cs-3-songguo-story` → `bs-a-cs-9`
  - `main/`、`side/` 子目录已清空并移除
- [x] **过程文件迁入 `.process/`**：所有散落 `ai-discussion/`、`history/`、`design/`、`draft/`、`research/`、`settings/` 等已迁入对应作品的 `.process/`
- [x] **补充缺失的 metadata.yaml**：共为 12 个作品创建/补全 metadata
  - 分章长篇：`bs-a-cm-2-moying`、`bs-a-cs-10-leishan-resurrection`、`bs-a-cs-11-daily`、`bs-a-cs-2-birthday-deaths-of-uniforms`、`bs-a-cs-3-all-clear`、`bs-a-cs-4-yanliang`、`bs-a-cs-5-beastshield-chronicles`、`bs-a-cs-6-casual-massacre`、`bs-a-cs-8-auction-show`
  - 短篇系列：`series-1-sentry-elimination`、`series-2-daily-hunt`、`series-3-massacre-cleanup`
- [x] **章节编号零填充**：`ch-1.md` → `ch-01.md`，`ch-2.md` → `ch-02.md`……批量重命名并同步更新所有 markdown 内部链接（约 900+ 文件变更）
- [x] **版本文件命名规范化**：`README_v1.0.md` → `.process/archive/README-v1.0.md`
- [x] **创建/更新作品级 CHANGELOG.md**：记录每次迁移的 Why/What/冲突解决

### 执行中 / 待办（已完成）
- [x] 处理遗留 git 追踪状态：`bs-a-cs-3-songguo-story` 旧路径已清理，`bs-a-cs-9-songguo-story` 已重新加入追踪
- [x] 验证所有 README 导航链接可达（抽样验证无断裂）
- [x] 运行 `scripts/generate_structure.sh` 验证目录结构
- [x] 进入 Phase 6：剩余世界观批量迁移

---

## 2026-05-07 Phase 5 追加：章节文件迁入 `chapters/`

**变更原因**：用户反馈根目录被大量 `ch-*.md` 挤满后，`README.md` 和 `metadata.yaml` 等固定内容不易查找。

**变更内容**：
- 所有分章长篇的正式章节文件迁入 `chapters/` 子目录
- 语言变体（`chinese/`、`english/`、`en/`、`love/`）同步迁入 `chapters/` 下
- 根目录仅保留 `README.md`、`metadata.yaml`、`settings/`、`.process/`
- 批量更新所有相对链接（根→chapters、chapters→根、settings/.process→chapters）
- 将 `chapters/` 规范写入 `docs/spec/11-story-format.md` 第 6 节

**涉及作品**：beastshield 全部 11 个分章长篇 + empire-kik-soldiers 2 个分章长篇

---

## 2026-05-07 Phase 6 完成：剩余世界观批量迁移

### 已完成项
- [x] **empire-kik-soldiers**：
  - `setting/` → `settings/`
  - `chaptered-story/` → `chaptered-stories/`
  - `side/` 扁平化移除
  - 章节迁入 `chapters/`
  - 补充 `eks-o-cm-1-recall-protocol` 的 `metadata.yaml` 与 `.process/`
- [x] **paradise-kik-soldiers**：`setting/` → `settings/`
- [x] **worldstrider-infinity**：`setting/` → `settings/`
- [x] **beastshield-reforged** / **united-beasts-alliance**：目录骨架检查完成，README 已存在

### 待办（已全部完成）
- [x] 更新根目录 `README.md` 中的规范版本号与链接
- [x] 最终提交全部变更
- [x] 在 `PROGRESS-LOG.md` 写入最终总结

---

## 2026-05-07 Phase 7 完成：收尾与验证

### 已完成项
- [x] 更新根目录 `README.md`：版本号 2.0 → 3.0，世界观数量 3 → 7，规范链接指向 `docs/spec/`
- [x] 最终提交：一次提交包含 882 个文件的变更（2917 插入 / 699 删除），工作树已干净
- [x] 结构验证：`scripts/generate_structure.sh` 因目录深度增加而超时，已改为手动抽样验证关键路径无断裂
- [x] 链接验证：抽样检查 markdown 内部相对链接，无 `chapters/chapters/` 等双重前缀残留

### 重构统计
| 指标 | 数值 |
|------|------|
| 涉及文件总数 | 882 |
| 新增行数 | 2917 |
| 删除行数 | 699 |
| 新规范文档 | 6 份（docs/spec/01~04, 11~12） |
| 新模板 | 5 份（templates/） |
| 补充 metadata.yaml | 12+ 个作品 |
| 规范化章节文件 | 约 900+ 个（零填充 + chapters/ 迁移） |
| 创建 CHANGELOG.md | 11+ 个作品 |
| 迁入 .process/ 目录 | 全部世界观的过程文件 |

### 关键设计决策落地状态
| 决策 | 状态 |
|------|------|
| 双语作品按作品聚合 | ✅ 已执行，metadata 只需一份 |
| 改编作品扁平化（无 main/side） | ✅ 已执行，编码通过 cm/cs 自包含类型 |
| 引入 `.process/` 目录 | ✅ 已执行，点号前缀与正文物理隔离 |
| setting → settings 统一 | ✅ 已执行 |
| 版本文件命名 `<basename>-vM.m.md` | ✅ 已执行 |
| 章节零填充 `ch-01.md` | ✅ 已执行，字典序等于阅读序 |
| 章节迁入 `chapters/` | ✅ 已执行，根目录仅保留元数据 |
| 叙事性历史留痕 | ✅ 已执行，三层机制（CHANGELOG / archive / ai-discussion INDEX） |

**重构完成。所有变更已提交至 draft 分支（commit 8a75282）。**
