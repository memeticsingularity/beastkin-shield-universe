# Beastkin Universe 元数据规范 v3.0

> 本文档定义 `metadata.yaml` 的字段语义与校验规则。编码语法见 `02-work-coding.md`。

---

## 1. 文件位置

`metadata.yaml` 必须放置在每个作品目录的根级，与 `README.md` 同级。

## 2. 必填字段

```yaml
work:
  code: ""              # 必须与所在文件夹名完全一致
  title:
    chinese: ""
    english: ""
  format: ""            # chaptered-story | short-story
  form_type: ""         # cm | cs | s
  status: ""            # updating | completed | abandoned
  location: ""          # original-archives | adaptation-works

  # 条件必填：仅 chaptered-story 需要
  subtype: ""           # main | side（由 form_type 自动确定：cm→main, cs→side）

creation:
  author: ""
  start_date: ""        # YYYY-MM-DD
```

## 3. 推荐字段

```yaml
work:
  promotion_status: not_eligible   # not_eligible | eligible | under_review | promoted
  work_type: full-original         # full-original | direct-adaptation | adapted-expansion | inspired-by | crossover
  tags: []
  content_warnings: []

creation:
  last_update: ""       # YYYY-MM-DD
  universe_based_on: "" # beastshield | beastshield-reforged | united-beasts-alliance | beastshield-paradise | mixed
```

## 4. 条件必填字段

### 4.1 改编作品

`creation.adaptation_info` 必填：

```yaml
adaptation_info:
  original_work: ""     # 原作品编码
  original_title: ""
  adaptation_approach: ""  # faithful | reimagined | loose | theme-inversion
  key_changes: |
    多行文本，描述核心变更
```

### 4.2 联动作品

`creation.crossover_info` 必填：

```yaml
crossover_info:
  universes: []
  primary_universe: ""
```

## 5. 字段一致性约束

| 约束 | 说明 |
|------|------|
| code == 文件夹名 | 必须完全一致 |
| form_type=cm → subtype=main | 自动确定，不可手动冲突 |
| form_type=cs → subtype=side | 同上 |
| format=short-story → 无 subtype | 短篇不需要 subtype 字段 |
| location 必须与物理路径一致 | 原创档案的作品 location 不能写 adaptation-works |

## 6. 校验

所有 `metadata.yaml` 必须通过 `.schemas/metadata-schema.json` 校验。

---

*版本: 3.0*
*替代: docs/metadata-guide.md*
