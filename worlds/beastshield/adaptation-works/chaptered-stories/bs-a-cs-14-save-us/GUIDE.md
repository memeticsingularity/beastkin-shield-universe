# 《Save Us Then Load World》项目协作指南

> 本文档为 `bs-a-cs-14-save-us/` 项目的协作速查手册。

---

## 1. 本项目是什么

`bs-a-cs-14-save-us/` 是 `beastshield/` 世界观下的**原创改编项目**。它借用原作《兽游世界》的设定框架（VR游戏、兽盾公司、精槽机制、射精死亡），但讲述一个完全不同的故事。

**核心设定**：一名普通玩家沉浸在 VR 游戏《兽游世界》中，凭借"Save Us Then Load World"（风灵月影/外挂）的存档读档能力，试图把杀戮游戏变成全员存活的乌托邦。

**与原作的关键差异**：
- 原作主角是外来玩家，抱着"这只是游戏"的心态；本作主角色**把 NPC 当成真实的人**，拒绝接受任何死亡
- 原作主角杀伐果断；本作主角色**为了拯救每一个 NPC 不惜反复读档**
- 原作的"读档"是游戏机制；本作的"读档"是**执念**——主角在线下与好友讨论方案，上线后执行，读档次数越多，精神负担越重

---

## 2. 与原作的关系

| 想找的内容 | 所在位置 |
|-----------|---------|
| **原作主线第一卷** | [`../../original-archives/chinese/chaptered-stories/main/bs-o-cm-1-main-story-1/`](../../original-archives/chinese/chaptered-stories/main/bs-o-cm-1-main-story-1/) |
| **原作世界观设定** | [`../../settings/0-original-setting/`](../../settings/0-original-setting/) |

**原则**：原作设定以 `original-archives/` 和 `settings/0-original-setting/` 为准，不可修改；改编侧如果发现冲突，在改编文档中标注差异即可。

---

## 3. 目录结构

```
bs-a-cs-14-save-us/
├── GUIDE.md                    # 本文件（协作速查）
├── README.md                   # 对外总览（项目简介、章节列表）
├── metadata.yaml               # 作品元数据
│
├── chapters/                   # 章节正文（待创建）
│   └── volume-1/               # 第一卷
│
├── notes/                      # 创作笔记
│   └── concept-notes.md        # 概念笔记
│
└── .process/                   # 过程文件与设定档案
    ├── discuss/                # 讨论记录
    ├── plans/                  # 计划/大纲
    └── settings/               # 设定资料总入口
        ├── characters/         # 角色档案
        ├── scenes/             # 场景/地点档案
        └── systems/            # 机制档案（如风灵月影规则）
```

---

## 4. 笔风规范

- **第一人称** "我"，紧贴主角的感官与心理
- **保留游戏UI**：精槽、系统提示、存档界面等是叙事的一部分
- **情色与生死绑定**：原作机制保留，但情感基调从"征服"变为"拯救"
- **时间循环叙事**：允许同一场景的多次描写（不同读档版本），通过细节差异体现主角的成长和挣扎

---

## 5. 文件存放规则

| 文件类型 | 存放位置 |
|---------|---------|
| 改编故事（新章节） | `chapters/volume-N/` |
| 角色设定档案 | `.process/settings/characters/` |
| 场景/地点档案 | `.process/settings/scenes/` |
| 机制档案 | `.process/settings/systems/` |
| 讨论/概念文档 | `.process/discuss/` |
| 计划/大纲 | `.process/plans/` |
| 笔记 | `notes/` |
| 项目级指南/说明 | `GUIDE.md` 或 `README.md` |

---

## 6. 禁止事项

- **不要把续写故事存到原作侧**（`original-archives/`）
- **不要修改原作侧的设定文件**
- **不要引入原作不存在的设定而不标注**（如新增机制需在 `systems/` 建档说明）

---

*文档版本：1.0*
*创建日期：2026-05-24*
