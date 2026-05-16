# README 全面规范化记录 / README Normalization Log

**日期**: 2026-05-16
**类型**: 文档体系重构
**影响范围**: 全项目 README + 规范文档

---

## 变更摘要

本次重构解决了项目 README 体系的系统性脱节问题：根 README 遗漏 5 个世界观、中间层 README 大面积缺失、格式混乱、双语排版不统一。

---

## 一、规范文档更新

### 1.1 作品编码规范 (`docs/spec/02-work-coding.md`)
- 补充世界观编码：`bso` (beastshield-online)、`eks` (empire-kik-soldiers)、`pks` (paradise-kik-soldiers)、`wi` (worldstrider-infinity)
- 更新正则表达式：`^(bs|bso|bsp|bsr|eks|pks|uba|wi)-...`

### 1.2 元数据规范 (`docs/spec/04-metadata.md`)
- 补充 `universe_based_on` 枚举：全部 8 个世界观
- 新增"发现引擎标签体系"节，定义 tag 推荐枚举（兽人类型、内容要素、关系类型、场景标签、叙事风格）

### 1.3 中间文档规范 (`docs/spec/03-intermediate-documents.md`)
- 章节重新组织为连续编号 1-11
- 新增层级规范：根级(1)、世界观级(2)、档案根(3)、故事类型(4)、语言层(5)、设定库(6)、作品目录(7)
- 作品级模板新增"内容标签"可选节

---

## 二、模板体系完善

新建/更新模板文件：

| 模板 | 状态 | 说明 |
|------|------|------|
| `templates/root-README.md` | 新建 | 项目根级模板，含发现引擎入口 |
| `templates/archive-README.md` | 新建 | 原作/改编档案根模板 |
| `templates/story-type-README.md` | 新建 | chaptered/short-stories 模板 |
| `templates/language-README.md` | 新建 | chinese/english 语言层模板 |
| `templates/world-README.md` | 更新 | 增加发现入口、双语区块排版 |

**双语排版规范**：
- 固定结构模板使用编号（中文 `一、` `二、`；英文 `I.` `II.`）
- 作品级 README 不加编号，保持灵活
- 中英文区块用 `---` 分隔

---

## 三、根 README 重构

### 3.1 关键变更
- 徽章：`7 Unique Settings` → `8 Unique Settings`
- 世界观概览：3 个 → 8 个（新增 beastshield-online、paradise、paradise-kik-soldiers、empire-kik-soldiers、worldstrider-infinity）
- 新增"发现故事"节：按兽人类型、内容标签、故事形式过滤
- 快速访问表：补全全部 8 个世界的原作链接
- 项目结构图：3 个世界 → 8 个世界
- 版本：v3.0 → v3.1

---

## 四、世界观级 README 更新

### 4.1 新建
- `worlds/paradise-kik-soldiers/README.md` — 此前完全缺失

### 4.2 规范化
- `worlds/beastshield-online/README.md` — 重组为模板结构，保留 VR 机制/角色速查/术语表
- `worlds/worldstrider-infinity/README.md` — 保留跨项目索引，补充徽章/内容分级/发现入口/许可协议

---

## 五、中间层 README 批量创建

由 4 个并行 agent 按世界观批量创建，覆盖：
- `original-archives/README.md` (8 个世界)
- `adaptation-works/README.md` (5 个世界)
- `chaptered-stories/README.md` (多个)
- `short-stories/README.md` (多个)
- `chinese/README.md` / `english/README.md` (多个)
- `main/README.md` / `side/README.md` (多个)
- `settings/README.md` (8 个世界)

总计约 60+ 个新 README。

---

## 六、异常修复

### 6.1 作品级 README 清理
- `bs-a-cs-4-yanliang/README.md` — 提取嵌入的 685KB 小说正文，替换为标准模板
- `bs-a-cm-2-moying/README.md` — 提取嵌入的 431KB 小说正文，替换为标准模板
- `bs-a-c-1-short-stories/README.md` — 空文件填充标准内容

### 6.2 文件名规范化
- `bs-a-cs-6-casual-massacre/README_v1.md` → `README-v1.0.md`
- `bs-a-cs-6-casual-massacre/plan_v2.md` → `plan-v2.0.md`

---

## 七、验证结果

### 7.1 结构性验证
- README 总数：68 → 124（`worlds/` 下）
- 空文件：1 → 0
- 超大作品级 README（>500 行）：2 → 0（`yanliang` 685KB / `moying` 431KB 已替换为标准模板）
- 根 README TOC 编号错乱 → 已修复（七~十二顺序正确）
- `yanliang` README 简介错误（误写为岩岁/岩参）→ 已修正为炎/魉

### 7.2 发现引擎验证
- 根 README：包含按兽人类型、内容标签、故事形式的过滤入口
- 世界观级 README：至少 3 个包含发现入口

---

## 八、待后续处理

- `ai-discussion/process/ch2/`、`ch5/` 下的约 30 个过程文件仍使用下划线命名，待后续逐步整改（已确认 `bs-a-cs-6-casual-massacre/` 下的 `plan_v2.md`、`README_v1.md` 已不存在）
- 各世界观 README 中的标签信息需随 metadata.yaml 更新同步维护
- 英文版世界观概览有待完善
- `bs-a-cs-1-shorts/README.md`（556 行）为短篇合集索引，属正常篇幅；图片库 README 不计入作品级

---

*记录创建：2026-05-16*
*关联规范：docs/spec/03-intermediate-documents.md v3.0*
