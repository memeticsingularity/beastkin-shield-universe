# Beastkin Shield Universe 作品命名与组织指南 2.1.1

## 简介

本文档规定了 Beastkin Shield Universe
项目中作品的命名规则和组织结构。所有贡献者创作新作品时，请遵循本指南。本指南根据最新项目结构更新，确保所有作品类型命名格式统一，章节标题为必填项。

## 核心概念定义

在深入细节前，请先理解以下核心概念：

1. **原作存档 (`original-archives`)**  
   存放由 **世界观第一作者**（或项目核心团队）创作的官方作品。这些作品是世界观的核心叙事基础。

2. **改编作品 (`adaptation-works`)**  
   存放由社区创作者基于官方作品进行的 **改编创作**。这些作品可视为官方世界的衍生演绎。改编作品在完成且获得认可后，可申请
   **晋升**。

3. **晋升路径**
    - **路径一：晋升为官方原作**  
      优秀的改编作品可整体 **迁移** 至对应世界观的 `original-archives` 中，成为该世界观正史的一部分。
    - **路径二：晋升为独立世界观**  
      特别优秀的改编作品，如果世界观设定完整且具有独立性，可申请成为 `worlds/` 下的一个全新世界观模块。

4. **主线故事目录结构**  
   主线故事文件直接存放在 `main/` 目录下，但允许根据作品内部逻辑（如多卷本）创建子目录（如 `volume-1/`
   ）进行组织。这属于 **作品内部结构**，不影响项目整体规范。

## 作品编码系统

每个作品都有一个唯一的编码，用于标识和组织。编码格式如下：

```
[世界观]-[性质]-[形式]-[序号]-[作品名]
```

### 编码示例

```
bs-a-c-001-a-new-gamer
│    │   │   │    └─ 作品名 (kebab-case, 英文小写连字符)
│    │   │   └─ 序号 (三位数，从001开始)
│    │   └─ 形式 (c=分章故事, s=短篇故事)
│    └─ 性质 (a=改编作品, o=原作, c=联动)
└─ 世界观缩写
```

### 字段说明

| 字段      | 值                                                     | 含义         | 示例                 |
|---------|-------------------------------------------------------|------------|--------------------|
| **世界观** | `bs`, `bsr`, `uba`                                    | 世界观缩写      | `bs` = beastshield |
| **性质**  | `a` = adaptation<br>`o` = original<br>`c` = crossover | 创作性质       | `a` = 改编作品         |
| **形式**  | `c` = chaptered-story<br>`s` = short-story            | 作品形式       | `c` = 分章故事         |
| **序号**  | `001`, `002`, ...                                     | 同形式下序号     | `001` = 第一个作品      |
| **作品名** | kebab-case                                            | 英文名(小写连字符) | `a-new-gamer`      |

### 世界观缩写对应表

| 缩写    | 完整名称                   | 说明       |
|-------|------------------------|----------|
| `bs`  | Beastshield            | 兽盾世界观    |
| `bsr` | Beastshield Reforged   | 兽盾新纪元世界观 |
| `uba` | United Beasts Alliance | 万兽盟世界观   |

## 目录结构

### 原创作品 (`original-archives`)

存放官方原创作家创作的作品，由项目核心团队维护。

```
worlds/世界观/original-archives/
├── chinese/                          # 中文作品
│   ├── chaptered-stories/            # 分章故事
│   │   ├── main/                     # 主线故事
│   │   │   └── 主线章节文件          # 直接放文件，无作品目录
│   │   └── side/                     # 支线故事
│   │       └── 作品编码目录/         # 每个支线独立目录
│   │           └── 支线章节文件
│   └── short-stories/                # 短篇故事
│       └── 短篇文件                  # 直接放文件
└── english/                          # 英文作品
    ├── chaptered-stories/
    │   ├── main/
    │   └── side/
    └── short-stories/
```

### 改编作品 (`adaptation-works`)

存放社区改编创作的作品，由社区贡献者维护。

```
worlds/世界观/adaptation-works/
├── chaptered-stories/                # 分章故事目录
│   └── 完整作品编码/                 # 每个作品独立目录
│       ├── README.md
│       ├── metadata.yaml
│       ├── 改编章节文件             # 与原创作品格式一致
│       ├── settings/
│       │   └── story-setting.md
│       └── images/
└── short-stories/                    # 短篇故事目录
    └── 完整作品编码/
        ├── README.md
        ├── metadata.yaml
        ├── 改编短篇文件             # 与原创作品格式一致
        ├── settings/
        │   └── story-setting.md
        └── images/
```

## 文件命名规范

### **核心原则：所有文件必须包含章节标题/作品标题**

### 1. 原创作品文件名格式

#### **主线故事 (main)**

- **格式**：`{世界观编码}-o-c-ch-{章节编号}-{章节标题简写}.md`
- **示例**：`bs-o-c-ch-001-a-bloody-beginning.md`
- **位置**：`original-archives/语言/chaptered-stories/main/`
- **注意**：主线故事允许根据作品需要创建子目录（如 `volume-1/`）进行逻辑组织

#### **支线故事 (side)**

- **格式**：`{世界观编码}-o-c-{支线编号}-{支线名}-ch-{章节编号}-{章节标题简写}.md`
- **示例**：`bs-o-c-001-yan-liang-ch-001-infiltration.md`
- **位置**：`original-archives/语言/chaptered-stories/side/{作品编码目录}/`

#### **短篇故事**

- **格式**：`{世界观编码}-o-s-{作品编号}-{作品名}.md`
- **示例**：`bs-o-s-001-farm-inn.md`
- **位置**：`original-archives/语言/short-stories/`

### 2. 改编作品文件名格式

#### **分章故事 (chaptered)**

- **格式**：`{完整作品编码}-ch-{章节编号}-{章节标题简写}.md`
- **示例**：`bs-a-c-001-a-new-gamer-ch-001-infiltration.md`
- **位置**：`adaptation-works/chaptered-stories/{完整作品编码}/`

#### **短篇故事 (short)**

- **格式**：`{完整作品编码}.md`
- **示例**：`bs-a-s-001-first-blood.md`
- **位置**：`adaptation-works/short-stories/{完整作品编码}/`

### 3. 特殊说明

1. **章节标题必填**：所有分章故事必须包含章节标题简写
2. **连字符使用**：章节编号前使用 `-ch-` 连接，保持格式统一
3. **标题简写规则**：
    - 英文小写，用连字符连接
    - 简明扼要，反映本章核心内容
    - 避免特殊字符和空格
4. **主线与支线区别**：
    - 主线：`-ch-` 前没有作品编号和作品名
    - 支线：`-ch-` 前有支线编号和支线名

## 作品晋升机制

### 从改编作品晋升为原创作品

当社区改编作品符合以下条件时，可申请晋升到 `original-archives`：

1. **完成状态**：作品已完结
2. **质量优秀**：获得社区广泛认可
3. **设定一致**：与原著世界观设定无冲突
4. **维护稳定**：有稳定的维护者
5. **授权清晰**：所有贡献者同意作品转移

### 从改编作品晋升为独立世界观

当改编作品符合以下条件时，可申请成为独立世界观：

1. **世界观完整**：拥有完整、独立的设定体系
2. **叙事成熟**：有完整的叙事结构和角色体系
3. **社区认可**：在社区中有广泛影响力
4. **维护团队**：有稳定的维护和开发团队
5. **授权清晰**：所有贡献者同意世界观独立

### 晋升流程

1. **申请**：作品维护者提交晋升申请
2. **审核**：核心团队审核作品质量
3. **迁移**：将作品从 `adaptation-works` 迁移到目标位置
4. **重命名**：根据需要重命名文件，符合新位置的命名规则
5. **更新**：更新所有相关链接和导航
6. **公告**：向社区公布晋升结果

## 文件规范

### 1. 必须包含的文件

#### 改编作品目录结构

```
完整作品编码/
├── README.md                     # 作品介绍
├── metadata.yaml                 # 元数据
├── 作品文件                     # 故事内容（按命名规范）
├── settings/
│   └── story-setting.md         # 本故事特有设定
└── images/                      # 图片资源目录
```

### 2. 元数据文件 (metadata.yaml)

```yaml
# 作品元数据
work:
  code: "bs-a-c-001-a-new-gamer"  # 作品编码
  title:
    chinese: "新玩家"              # 中文标题
    english: "A New Gamer"        # 英文标题
  format: "chaptered-story"       # chaptered-story / short-story
  subtype: "side"                 # main/side（仅分章故事需要）
  status: "updating"              # updating / completed
  location: "adaptation-works"    # 存储位置（original-archives/adaptation-works）
  promotion_status: "eligible"    # 晋升状态（eligible/under_review/promoted）

# 创作信息
creation:
  author: "作者名"                # 作者姓名
  start_date: "2024-01-01"        # 开始日期
  last_update: "2024-01-01"       # 最后更新日期
  based_on: "beastshield"         # 基于哪个世界观
```

### 3. README.md 模板

```markdown
# [作品标题]

## 基本信息

- **编码**: `bs-a-c-001-a-new-gamer`
- **状态**: 更新中
- **位置**: adaptation-works (改编作品)
- **类型**: 分章故事-支线
- **作者**: 作者名
- **开始日期**: 2024-01-01

## 故事简介

这里写故事简介...

## 章节列表

- [第一章: 潜入](`bs-a-c-001-a-new-gamer-ch-001-infiltration.md`)
- [第二章: 对决](`bs-a-c-001-a-new-gamer-ch-002-confrontation.md`)

## 设定说明

本故事使用了以下特殊设定：

- [查看详细设定](`settings/story-setting.md`)
```

## 创建新作品的步骤

### 创建原创作品（核心团队）

1. **确定作品信息**
    - 选择世界观（bs/bsr/uba）
    - 确定作品性质（原创用o）
    - 选择形式（分章故事c/短篇故事s）
    - 确定类型（主线main/支线side，仅分章需要）
    - 确定序号（查看已有作品，使用下一个序号）
    - 确定作品名（英文kebab-case）

2. **创建文件或目录**
    - **主线分章**：在 `original-archives/语言/chaptered-stories/main/` 创建文件
    - **支线分章**：在 `original-archives/语言/chaptered-stories/side/` 创建作品目录，然后在目录内创建文件
    - **短篇**：在 `original-archives/语言/short-stories/` 创建文件

3. **使用正确命名格式**
    - 主线：`{世界观}-o-c-ch-{编号}-{标题}.md`
    - 支线：`{世界观}-o-c-{编号}-{作品名}-ch-{章节编号}-{章节标题}.md`
    - 短篇：`{世界观}-o-s-{编号}-{作品名}.md`

### 创建改编作品（社区贡献者）

1. **确定作品信息**
    - 选择世界观（bs/bsr/uba）
    - 确定作品性质（改编用a）
    - 选择形式（分章故事c/短篇故事s）
   - 确定序号（查看已有改编作品，使用下一个序号）
    - 确定作品名（英文kebab-case）

2. **创建作品目录**
    - 在对应世界观的 `adaptation-works/形式/` 目录下
    - 创建新文件夹，使用完整编码命名
    - 复制模板文件并修改

3. **复制模板文件**
    - 从 `templates/adaption-work-template/` 复制对应模板
    - 修改文件夹名称和内部文件内容

4. **修改文件内容**
    - 更新 `metadata.yaml` 中的所有信息
    - 更新 `README.md` 中的内容
   - 更新故事文件，使用统一命名格式
    - 更新 `settings/story-setting.md` 中的设定
    - 添加图片到 `images/` 目录

## 示例

### 原创作品示例

**主线分章故事**：

- 文件：`bs-o-c-ch-001-a-bloody-beginning.md`
- 位置：`worlds/beastshield/original-archives/chinese/chaptered-stories/main/`
- 说明：主线故事没有单独的作品目录

**支线分章故事**：

- 文件：`bs-o-c-001-yan-liang-ch-001-infiltration.md`
- 位置：`worlds/beastshield/original-archives/chinese/chaptered-stories/side/bs-o-c-001-yan-liang/`
- 说明：支线故事有单独的作品目录

**短篇故事**：

- 文件：`bs-o-s-001-farm-inn.md`
- 位置：`worlds/beastshield/original-archives/chinese/short-stories/`

### 改编作品示例

**分章故事**：

- 作品编码：`bs-a-c-001-a-new-gamer`
- 文件：`bs-a-c-001-a-new-gamer-ch-001-infiltration.md`
- 位置：`worlds/beastshield/adaptation-works/chaptered-stories/bs-a-c-001-a-new-gamer/`

**短篇故事**：

- 作品编码：`bs-a-s-001-first-blood`
- 文件：`bs-a-s-001-first-blood.md`
- 位置：`worlds/beastshield/adaptation-works/short-stories/bs-a-s-001-first-blood/`

## 命名检查清单

创建文件时请检查：

- [ ] 世界观编码正确（bs/bsr/uba）
- [ ] 作品性质正确（o/a/c）
- [ ] 作品形式正确（c/s）
- [ ] 序号正确（三位数）
- [ ] 作品标识名正确（英文kebab-case）
- [ ] 章节编号正确（三位数，仅分章需要）
- [ ] **章节标题/作品标题已包含**（必填）
- [ ] 连字符使用正确（特别是 `-ch-`）
- [ ] 文件名全部小写
- [ ] 文件扩展名为 `.md`

## 注意事项

1. **命名一致性**：改编作品文件名格式与原创作品保持完全一致
2. **标题必填**：所有分章故事必须包含章节标题简写
3. **编码唯一性**：确保作品编码唯一，不重复
4. **序号连续性**：同一形式下的序号应连续递增
5. **文件命名**：使用小写字母和连字符，避免特殊字符
6. **图片引用**：在故事文件中正确引用图片路径
7. **状态更新**：作品完成后，将 `metadata.yaml` 中的状态改为 `completed`
8. **晋升申请**：符合晋升条件的作品可随时提交晋升申请

## 模板位置

项目提供了标准模板，位于：

- 分章故事模板：`templates/adaption-work-template/chaptered-story/`
- 短篇故事模板：`templates/adaption-work-template/short-story/`

请使用这些模板作为起点，确保所有作品结构一致。

---

## 常见问题

### Q: 为什么主线故事没有单独的作品目录？

A: 主线故事是世界观的核心叙事线，通常只有一个连续的故事，按章节直接排列在main目录下更清晰。

### Q: 支线故事为什么需要作品目录？

A: 支线故事是独立的叙事单元，可能有多个不同的支线故事。每个支线建立独立目录便于管理和维护。

### Q: 章节标题简写有什么要求？

A: 章节标题简写应：

1. 使用英文小写
2. 用连字符连接单词
3. 简明反映章节核心内容
4. 避免特殊字符和空格
5. 示例：`a-bloody-beginning`, `infiltration`, `final-battle`

### Q: 如果我的改编作品很受欢迎，可以成为官方作品吗？

A: 可以。当作品完成并达到一定质量标准后，可以申请迁移到 `original-archives`。迁移时会根据需要重命名文件。

### Q: 改编作品可以成为独立世界观吗？

A: 可以。如果改编作品拥有完整独立的设定体系、成熟的叙事结构和社区影响力，可申请成为独立世界观。这需要核心团队审核。

### Q: 如何查找特定类型的作品？

A: 根据文件名即可快速识别：

- 世界观：前2-3个字符
- 性质：第4个字符（o/a/c）
- 形式：第6个字符（c/s）
- 主线/支线：看是否有作品编号和作品名

---

## 更新记录

- **2025-12-13 v2.1.1**: 明确改编作品的晋升路径和定位
    - 新增核心概念定义部分
    - 明确改编作品的两种晋升路径：晋升为官方原作或独立世界观
    - 在元数据中添加晋升状态字段
    - 更新常见问题，增加改编作品晋升相关问题

- **2025-12-13 v2.1.0**: 根据最新项目结构更新，统一所有作品类型的命名格式
    - **主要变更**：
        1. **章节标题必填**：所有分章故事必须包含章节标题简写
        2. **主线支线区分明确**：
            - 主线：`{世界观}-o-c-ch-{编号}-{标题}.md`
            - 支线：`{世界观}-o-c-{编号}-{作品名}-ch-{章节编号}-{章节标题}.md`
        3. **更新所有示例**：确保示例与实际结构一致
        4. **添加命名检查清单**：帮助创建者检查命名正确性
        5. **完善常见问题**：解答主线/支线目录结构差异

---

*最后更新日期：2025年12月13日*  
*文档版本：2.1.1*