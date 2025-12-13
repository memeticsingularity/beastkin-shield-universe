# Beastkin Shield Universe 作品命名与组织指南

## 简介

本文档规定了 Beastkin Shield Universe 项目中作品的命名规则和组织结构。所有贡献者创作新作品时，请遵循本指南。

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

所有改编作品都放置在对应世界观的 `adaptation-works` 目录下，按形式分为两个子目录：

### Beastshield 世界观示例

```
worlds/beastshield/adaptation-works/
├── chaptered-story/                     # 分章故事目录
│   └── bs-a-c-001-a-new-gamer/         # 分章故事作品
│       ├── README.md                    # 作品介绍
│       ├── metadata.yaml                # 元数据文件
│       ├── ch001-new-chapter.md         # 第一章
│       ├── ch002-new-chapter.md         # 第二章
│       ├── settings/                    # 本故事特有设定
│       │   └── story-setting.md
│       └── images/                      # 图片资源
│           └── bs_ch001_1_new_image.png
│
└── short-story/                         # 短篇故事目录
    └── bs-a-s-001-first-blood/         # 短篇故事作品
        ├── README.md
        ├── metadata.yaml
        ├── new-short-story.md          # 短篇内容
        ├── settings/
        │   └── story-setting.md
        └── images/
            └── bs_ch001_1_new_image.png
```

## 文件规范

### 1. 必须包含的文件

每个作品目录必须包含以下文件：

#### 分章故事 (chaptered-story)

- `README.md` - 作品介绍
- `metadata.yaml` - 元数据
- `ch001-标题.md` - 第一章（后续章节按顺序编号）
- `settings/story-setting.md` - 本故事特有设定
- `images/` - 图片资源目录

#### 短篇故事 (short-story)

- `README.md` - 作品介绍
- `metadata.yaml` - 元数据
- `故事标题.md` - 短篇内容文件
- `settings/story-setting.md` - 本故事特有设定
- `images/` - 图片资源目录

### 2. 元数据文件 (metadata.yaml)

```yaml
# 作品元数据
work:
  code: "bs-a-c-001-a-new-gamer"  # 作品编码
  title:
    chinese: "新玩家"              # 中文标题
    english: "A New Gamer"        # 英文标题
  format: "chaptered-story"       # chaptered-story / short-story
  status: "updating"              # updating / completed

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
- **作者**: 作者名
- **开始日期**: 2024-01-01

## 故事简介

这里写故事简介...

## 章节列表

- [第一章: 新章节](`ch001-new-chapter.md`)
- [第二章: 新章节](`ch002-new-chapter.md`)

## 设定说明

本故事使用了以下特殊设定：

- [查看详细设定](`settings/story-setting.md`)
```

### 4. 分章文件命名规范

分章故事章节文件使用以下格式：

```
ch001-章节标题.md
ch002-章节标题.md
...
```

### 5. 图片文件命名规范

图片文件使用以下格式：

```
[世界观]_[章节]_[序号]_[描述].png
```

示例：

```
bs_ch001_1_main_character.png
bs_ch002_3_battle_scene.jpg
```

## 创建新作品的步骤

1. **确定作品信息**
    - 选择世界观（bs/bsr/uba）
    - 确定作品性质（改编用a）
    - 选择形式（分章故事c/短篇故事s）
    - 确定序号（查看已有作品，使用下一个序号）
    - 确定作品名（英文kebab-case）

2. **创建作品目录**
    - 在对应世界观的 `adaptation-works` 目录下
    - 选择 `chaptered-story` 或 `short-story` 子目录
    - 创建新文件夹，使用完整编码命名

3. **复制模板文件**
    - 从 `templates/adaption-work-template/` 复制对应模板
    - 修改文件夹名称和内部文件内容

4. **修改文件内容**
    - 更新 `metadata.yaml` 中的所有信息
    - 更新 `README.md` 中的内容
    - 更新章节文件或短篇文件
    - 更新 `settings/story-setting.md` 中的设定
    - 添加图片到 `images/` 目录

## 示例

### 创建新的分章故事

假设要创建一个基于 Beastshield 的改编分章故事，这是该形式下的第三个作品，名为 "dragon-quest"：

1. 编码：`bs-a-c-003-dragon-quest`
2. 目录：`worlds/beastshield/adaptation-works/chaptered-story/bs-a-c-003-dragon-quest/`
3. 复制模板：`templates/adaption-work-template/chaptered-story/bs-a-c-000-a-new-chaptered-story/`
4. 修改文件：
    - 重命名文件夹
    - 修改 `metadata.yaml` 中的编码、标题等
    - 修改 `README.md` 中的内容
    - 修改章节文件内容

### 创建新的短篇故事

假设要创建一个基于 Beastshield 的改编短篇故事，这是该形式下的第二个作品，名为 "winter-wolf"：

1. 编码：`bs-a-s-002-winter-wolf`
2. 目录：`worlds/beastshield/adaptation-works/short-story/bs-a-s-002-winter-wolf/`
3. 复制模板：`templates/adaption-work-template/short-story/bs-a-s-000-a-new-short-story/`
4. 修改文件：
    - 重命名文件夹
    - 修改 `metadata.yaml` 中的编码、标题等
    - 修改 `README.md` 中的内容
    - 修改短篇文件内容

## 注意事项

1. **编码唯一性**：确保作品编码唯一，不重复
2. **序号连续性**：同一形式下的序号应连续递增
3. **文件命名**：使用小写字母和连字符，避免特殊字符
4. **图片引用**：在故事文件中正确引用图片路径
5. **状态更新**：作品完成后，将 `metadata.yaml` 中的状态改为 `completed`

## 模板位置

项目提供了标准模板，位于：

- 分章故事模板：`templates/adaption-work-template/chaptered-story/`
- 短篇故事模板：`templates/adaption-work-template/short-story/`

请使用这些模板作为起点，确保所有作品结构一致。

---

*最后更新日期：2025-12-13*  
*文档版本：1.0.0*