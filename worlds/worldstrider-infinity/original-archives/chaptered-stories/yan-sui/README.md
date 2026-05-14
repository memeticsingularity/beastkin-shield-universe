# 《从字里行间捞起你：岁与参》故事管理系统

> 本目录为《万界巡行：无限》中岩岁/岩参父子救赎故事的创作管理中心。
>
> **改编/AI 协作侧**：原作设定请见 [`bs-a-cs-5-beastshield-chronicles`](../../../../beastshield/adaptation-works/chaptered-stories/bs-a-cs-5-beastshield-chronicles/)。

---

## 📋 快速导航

| 我想了解...        | 查看文档                                     |
|----------------|------------------------------------------|
| **当前进度**       | [CURRENT_STATUS.md](./CURRENT_STATUS.md) |
| **故事走向/大纲**    | [STORY_ROADMAP.md](./STORY_ROADMAP.md)   |
| **角色设定（原作）**  | [beastshield 角色档案](../../../../beastshield/adaptation-works/chaptered-stories/bs-a-cs-5-beastshield-chronicles/.process/settings/characters/) |
| **世界观设定（融合版）** | [WORLD_SETTING.md](./WORLD_SETTING.md)   |
| **历史版本**       | [history/](./history/) 文件夹               |

---

## 📁 目录结构说明

```
yan-sui/
├── README.md                 # 本文件：总览与导航
├── CURRENT_STATUS.md         # 当前进度：写到哪了，下一步写什么
├── STORY_ROADMAP.md          # 故事走向：大纲、章节规划、感情线设计
├── WORLD_SETTING.md          # 融合版世界观设定
├── story-outline-v6.md       # [废弃]旧版大纲，仅参考
│
├── trunk/                    # 主线故事（当前默认版本）
│
├── branches/                 # 分支故事线
│   └── yan-can-canon-death/  # 岩参原作死亡线改编（含 v1/v2）
│
├── ai-discuss/               # AI 辅助创作讨论记录
├── chat/                     # 角色对话/聊天模拟记录
├── discussions/              # 版本分析、角色弧光讨论、创作笔记
└── history/                  # 所有历史版本归档
    ├── v0-*                  # 原始版本（作者提供的故事）
    └── v1-*                  # 第一版改编（分幕结构，外貌描写）
```

> **说明**：`ai-discuss/`、`discussions/`、`chat/`、`history/` 在职能上等同于 v3.0 规范中的 `.process/` 目录内容，暂未迁移至 `.process/` 以保持现有链接稳定。

---

## 🔗 跨项目索引（原作 ↔ 改编）

| 想找的内容 | 所在位置 |
|-----------|---------|
| **原作角色设定**（岩参、岩岁、壹安等） | [`bs-a-cs-5-beastshield-chronicles/.process/settings/characters/`](../../../../beastshield/adaptation-works/chaptered-stories/bs-a-cs-5-beastshield-chronicles/.process/settings/characters/) |
| **原作者对话/设定来源** | [`bs-a-cs-5-beastshield-chronicles/.process/settings/author-chat/`](../../../../beastshield/adaptation-works/chaptered-stories/bs-a-cs-5-beastshield-chronicles/.process/settings/author-chat/) |
| **改编故事（岩参死亡线）** | [`branches/yan-can-canon-death/`](./branches/yan-can-canon-death/) |
| **改编版本分析/对比** | [`discussions/`](./discussions/) |
| **AI 创作讨论记录** | [`ai-discuss/`](./ai-discuss/) |

---

## 🎭 角色档案位置

| 角色     | 原作档案位置                                                               |
|--------|------------------------------------------------------------------------|
| **岩岁** | [`bs-a-cs-5-beastshield-chronicles/.process/settings/characters/yan-sui.md`](../../../../beastshield/adaptation-works/chaptered-stories/bs-a-cs-5-beastshield-chronicles/.process/settings/characters/yan-sui.md) |
| **岩参** | [`bs-a-cs-5-beastshield-chronicles/.process/settings/characters/yan-can.md`](../../../../beastshield/adaptation-works/chaptered-stories/bs-a-cs-5-beastshield-chronicles/.process/settings/characters/yan-can.md) |
| **壹安** | [`bs-a-cs-5-beastshield-chronicles/.process/settings/characters/yi-an.md`](../../../../beastshield/adaptation-works/chaptered-stories/bs-a-cs-5-beastshield-chronicles/.process/settings/characters/yi-an.md) |

---

## 📖 当前版本状态

### 主线（trunk/）—— 救赎线

- **当前版本**：V2（连续叙事，慢节奏，万字以上长章）
- **状态**：V2 前五章已完成（`latest/ch-1.md` 至 `latest/ch-5.md`），第六章规划中
- **V1 已归档**至 `history/`

**V2 已完成章节**：
- ch-1：救岩岁（约 24000 字）
- ch-2：岩岁康复（约 21000 字）
- ch-3：夜宵与礼物悬念（约 16000 字）
- ch-4：救岩参（约 13500 字）
- ch-5：岩参苏醒与清洁（约 11000 字，P0 问题已修复）

### 分支（branches/yan-can-canon-death/）—— 岩参原作死亡线

- **当前活跃设定**：v2（壹安设定：伯恩山犬，46岁，岩参后辈，蓝制服）
- **已完成版本**：
  - `7-chapters-v2/` —— 《无归》七章完整版
  - `claude-synth-v2/` —— 《雪停之前》合成版（Claude）
  - `snow-night-v2/` —— 《雪夜》（DeepSeek）
  - `before-dawn-v2/` —— 《天亮之前》（DeepSeek）
  - `claude-ideal-v2/` —— 《终夜》终极理想版（Claude）
  - `deepseek-ideal-v2/` —— 《雪停之前》终极理想版（DeepSeek）
- **创作文档**：`creative-brief-full-spec-v2.md`（完整创作简报）
- **分析文档**：`discussions/claude-vs-deepseek-ideal-v2.md`（成文对决）

---

## 🔄 版本迭代记录

| 项目 | 版本 | 特点 | 状态 |
|------|------|------|------|
| **主线** | V1 | 分幕结构，详细外貌描写 | 已完成，归档 |
| **主线** | V2 | 连续叙事，慢节奏，感官体验 | 前五章完成，第六章规划中 |
| **死亡线** | v1 | 老赵设定（平辈战友） | 已完成，归档参考 |
| **死亡线** | v2 | 壹安设定（后辈，蓝制服） | **当前活跃，全部版本已完成** |

---

## 📝 创作原则（V2版本）

根据最新要求，V2版本将遵循：

1. **叙事结构**：取消分幕，连续叙事
2. **节奏**：慢节奏，不跳环节
3. **篇幅**：单章至少1万字以上
4. **描写重点**：
    - 动作和细节（大量、细致、直白、朴素）
    - 感官体验（视觉、触觉、嗅觉、味觉）
    - 兽人肉体特征（脂包肌、各肌肉群）
    - 体温、毛发、服饰、肌肉的交互
5. **推进方式**：人物互动推动，非情节推动
6. **五要素齐全**：心理、神态、动作、环境、语言

---

*最后更新：2026-05-08*
