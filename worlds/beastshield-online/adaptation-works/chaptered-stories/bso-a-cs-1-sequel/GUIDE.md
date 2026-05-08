# 《兽游世界OL》续写项目协作指南

> 本文档为 `bso-a-cs-1-sequel/` 项目的 AI 协作速查手册。读完此文件即可理解本项目的结构、快速定位文档、知道该把新文件放哪。

---

## 1. 本项目是什么

`bso-a-cs-1-sequel/` 是 `beastshield-online/` 世界观下的**改编续写项目**。原作作者仅完成第一卷前三章，本项目在此基础上进行第四章及以后的原创续写。

**核心设定**：VR 网游世界，所有伤害转化为「性欲值/精槽」，达到 100% 即射精死亡。

---

## 2. 与 beastshield-online 原作的关系

本项目**基于** beastshield-online 原作世界观，**存放于改编侧**（`adaptation-works/`）。

| 想找的内容 | 所在位置 |
|-----------|---------|
| **原作前三章原文** | [`../../original-archives/chinese/chaptered-stories/main/`](../../original-archives/chinese/chaptered-stories/main/) |
| **原作世界观设定** | [`../../../settings/0-original-setting/`](../../../settings/0-original-setting/) |
| **原作按章节提取的元设定** | [`../../../settings/0-original-setting/setting.md`](../../../settings/0-original-setting/setting.md) |

**原则**：原作设定以 `original-archives/` 和 `settings/0-original-setting/` 为准，不可修改；改编侧如果发现冲突，在改编文档中标注差异即可。

---

## 3. 目录结构

```
bso-a-cs-1-sequel/
├── GUIDE.md                    # 本文件（协作速查）
├── README.md                   # 对外总览（项目简介、章节列表）
├── CURRENT_STATUS.md           # 当前创作进度追踪
├── metadata.yaml               # 作品元数据
│
├── chapters/                   # 章节正文
│   ├── ch-01.md                # 第一章（原作导入）
│   ├── ch-02.md                # 第二章（原作导入）
│   ├── ch-03.md                # 第三章（原作导入）
│   └── ch-04.md                # 第四章起（原创续写）
│
├── notes/                      # 创作笔记
│   ├── README.md               # 笔记目录索引
│   └── style-guide.md          # 原作者笔风分析
│
└── .process/                   # 过程文件与设定档案
    └── settings/               # 设定资料总入口
        ├── README.md           # 设定总索引
        ├── characters/         # 角色档案
        │   ├── README.md       # 角色总览（按编号索引）
        │   ├── _TEMPLATE.md    # 角色档案模板
        │   ├── 01-players/     # 玩家角色
        │   ├── 02-hostile/     # 敌对/NPC角色
        │   ├── 03-civilian/    # 平民/背景角色
        │   └── 04-creature/    # 生物/特殊存在
        ├── scenes/             # 场景/地点档案
        │   ├── README.md       # 场景总览
        │   ├── _TEMPLATE.md    # 场景档案模板
        │   └── *.md            # 具体场景档案
        ├── systems/            # 游戏机制档案
        │   ├── README.md       # 系统总览
        │   ├── _TEMPLATE.md    # 系统档案模板
        │   └── *.md            # 具体系统档案
        ├── author-chat/        # 作者创作对话（预留）
        └── levels/             # 关卡/副本设计（预留）
```

---

## 4. 当前活跃工作区

以下区域是近期高频修改、需要优先关注的：

### 4.1 角色档案库（已建立）
- **路径**：`.process/settings/characters/`
- **状态**：前三章所有角色（11个）档案已补完，按 `01-players/02-hostile/03-civilian/04-creature/` 编号子目录归档
- **命名规范**：`XXX-名字拼音.md`（3位编号 + 本名拼音）

### 4.2 场景档案库（已建立）
- **路径**：`.process/settings/scenes/`
- **状态**：4个关键场景档案已完成（新手山坡、村庄、山路、山贼山寨）

### 4.3 系统档案库（已建立）
- **路径**：`.process/settings/systems/`
- **状态**：6个核心系统档案已完成（精槽、VR设备、战斗、技能、货币、存档）

### 4.4 第四章（待创作）
- **暂定标题**：山寨日常 / 虎寨新丁
- **状态**：待创作
- **承接点**：主角与虎大王相认后，被允许在寨中自由活动
- **待确定**：主角如何融入山贼组织、虎大王的寨子经营日常、玩家竞争关系处理

---

## 5. 文件存放规则

### 5.1 命名规范

**过程文件**（讨论、笔记、分析）：`YYYY-MM-DD-描述.md`
- 例：`2026-05-09-chapter-4-outline.md`

**故事章节**：`ch-N.md`
- 例：`ch-04.md`

**角色档案**：`XXX-名字拼音.md`
- 3位编号 + 角色**本名**（非称号/职业）
- 例：`001-zhu-tu.md`、`002-hu-lie.md`
- 无名角色需在档案中赋予正式名字

**场景档案**：`场景英文名.md`
- 小写，单词间用连字符
- 例：`bandit-fortress.md`、`starting-hillside.md`

**系统档案**：`系统英文名.md`
- 小写，单词间用连字符
- 例：`essence-gauge.md`、`combat-system.md`

### 5.2 新文件该放哪

| 文件类型 | 存放位置 |
|---------|---------|
| 改编故事（新章节） | `chapters/` |
| 角色设定档案 | `.process/settings/characters/` 下的对应子目录 |
| 场景/地点档案 | `.process/settings/scenes/` |
| 游戏机制档案 | `.process/settings/systems/` |
| 笔风/规范文档 | `notes/` |
| 项目级指南/说明 | `GUIDE.md` 或 `README.md`（本目录根级） |

### 5.3 禁止事项

- **不要把本项目的续写故事存到 beastshield-online 原作侧**（`original-archives/` 或 `settings/0-original-setting/`）
- **不要把本项目的设定档案存到 beastshield-online 原作侧**
- **不要修改 beastshield-online 原作侧的原作设定文件**
- **角色档案文件名不要使用称号/职业**（如 `hu-dawang.md` → 应使用本名 `hu-lie.md`）

---

## 6. 术语速查

| 术语 | 含义 |
|------|------|
| **精槽** | 替代血条的灰色空槽，受伤增长，100% 即射精死亡 |
| **暴鸡** | 暴击谐音，攻击敏感部位造成巨额精槽增长 |
| **撸币** | 游戏货币 |
| **楠肉** | 石楠花汁液腌制的肉类 |
| **粉鞭** | 头部形似龟头的粉色毒蛇 |
| **处决状态** | 精槽接近满值时角色无法动弹，任人处置 |
| **休息养成系** | 虎大王的玩家类型，偏好经营而非战斗 |
| **兽盾游戏公司** | 游戏开发商 |

---

## 7. 快速验证清单

修改完文件后，确认以下索引是否仍准确：

- [ ] `README.md` 是否仍准确描述项目结构和章节状态？
- [ ] `.process/settings/characters/README.md` 的角色索引表格是否同步？
- [ ] `.process/settings/scenes/README.md` 的场景索引是否同步？
- [ ] `.process/settings/systems/README.md` 的系统索引是否同步？
- [ ] 新角色档案是否使用了「本名」而非「称号/职业」作为文件名？
- [ ] 新文件是否放在了正确的侧（原作 vs 改编）？
- [ ] 档案中是否标注了【原作】与【补完】的来源区分？

---

*文档版本：1.0*
*创建日期：2026-05-09*
*适用范围：bso-a-cs-1-sequel 项目所有 AI 协作会话*
