# Metadata Guide for Beastkin Universe Projects / Beastkin Universe 项目元数据指南

---

## 1 Introduction / 介绍

### 1.1 Purpose / 目的

This guide provides detailed instructions for correctly filling out the `metadata.yaml` file in each work directory.
Metadata serves as the "identity card" of a work, ensuring all work information is clear, consistent, and verifiable.

本指南详细指导如何正确填写作品文件夹中的 `metadata.yaml` 文件。元数据是作品的"身份证"，确保所有作品信息清晰、一致、可验证。

### 1.2 Scope / 范围

This guide applies to all works in the Beastkin Universe project, including original works, adaptations, and crossover
works.

本指南适用于 Beastkin Universe 项目中的所有作品，包括原创作品、改编作品和跨界联动作品。

### 1.3 Related Documents / 相关文档

- [Project Structure Guide](../docs/project-structure-guide.md)
- [Work Naming Guide](../docs/work-naming-guide-chinese.md)
- [Universal Story Template Guide](../docs/universal-story-template-guide-chinese.md)

---

## 2 Basic Structure / 基础结构

### 2.1 File Overview / 文件概览

Each `metadata.yaml` file consists of two main sections:
每个 `metadata.yaml` 文件包含两个主要部分：

1. **`work`** - Work information / 作品信息
2. **`creation`** - Creation information / 创作信息

### 2.2 File Location / 文件位置

The `metadata.yaml` file must be placed in the root of each work directory.
`metadata.yaml` 文件必须放置在每个作品目录的根目录下。

### 2.3 File Format / 文件格式

The file must be valid YAML format and conform to the JSON schema defined in `metadata-schema.json`.
文件必须是有效的 YAML 格式，并符合 `metadata-schema.json` 中定义的 JSON 架构。

---

## 3 Work Information Section / 作品信息部分

### 3.1 Required Fields / 必填字段

#### 3.1.1 `code` - Work Code / 作品编码

- **Type / 类型**: String / 字符串
- **Description / 说明**: Complete work code, **must exactly match the folder name** / 作品完整编码，**必须与文件夹名完全一致
  **
- **Example / 示例**: `bsp-o-c-001-g-277-green-bull-azhuang`
- **Validation / 验证**: Must match pattern `^(bs|bsp|bsr|uba)-(o|a|c)-(c|s)-\d{3}(-[a-z0-9-]+)?$` / 必须匹配模式

#### 3.1.2 `title` - Work Title / 作品标题

- **Type / 类型**: Object / 对象
- **Required Subfields / 必填子字段**:
    - `chinese` - Chinese title / 中文标题 (String / 字符串)
    - `english` - English title / 英文标题 (String / 字符串)
- **Example / 示例**:
  ```yaml
  title:
    chinese: "夜哨无声"
    english: "Silent Night Watch"
  ```

#### 3.1.3 `format` - Work Format / 作品格式

- **Type / 类型**: String / 字符串
- **Allowed Values / 允许值**: `chaptered-story` (分章故事), `short-story` (短篇故事)
- **Example / 示例**: `chaptered-story`

#### 3.1.4 `status` - Work Status / 作品状态

- **Type / 类型**: String / 字符串
- **Allowed Values / 允许值**:
    - `updating` - Work is being updated / 作品正在更新中
    - `completed` - Work is completed / 作品已完成
    - `abandoned` - Work is abandoned / 作品已弃置
- **Example / 示例**: `completed`

#### 3.1.5 `location` - Storage Location / 存储位置

- **Type / 类型**: String / 字符串
- **Allowed Values / 允许值**:
    - `original-archives` - Original works / 原作存档
    - `adaptation-works` - Adaptation works / 改编作品
- **Example / 示例**: `original-archives`

### 3.2 Optional Fields / 可选字段

#### 3.2.1 `subtype` - Work Subtype / 作品子类型

- **Type / 类型**: String / 字符串
- **When Required / 何时需要**: Only required for chaptered stories / 仅分章故事需要
- **Allowed Values / 允许值**: `main` (主线), `side` (支线)
- **Example / 示例**: `side`

#### 3.2.2 `promotion_status` - Promotion Status / 晋升状态

- **Type / 类型**: String / 字符串
- **Allowed Values / 允许值**:
    - `not_eligible` - Not eligible for promotion / 不适合晋升
    - `eligible` - Eligible for promotion / 适合晋升
    - `under_review` - Under review for promotion / 晋升审核中
    - `promoted` - Already promoted / 已晋升
- **Default / 默认**: `not_eligible`
- **Example / 示例**: `eligible`

#### 3.2.3 `work_type` - Work Type Detail / 作品类型细分

- **Type / 类型**: String / 字符串
- **Allowed Values / 允许值**:
    - `full-original` - Completely original work / 完全原创作品
    - `direct-adaptation` - Direct adaptation / 直接改编
    - `adapted-expansion` - Adaptation with expansion / 改编扩展
    - `inspired-by` - Inspired by existing work / 灵感来源于
    - `crossover` - Crossover work / 跨界联动
- **Example / 示例**: `adapted-expansion`

#### 3.2.4 `tags` - Work Tags / 作品标签

- **Type / 类型**: Array of strings / 字符串数组
- **Description / 说明**: Tags for categorization and search / 用于分类和搜索的标签
- **Example / 示例**: `["redemption", "rescue", "new-beginning"]`

#### 3.2.5 `inspiration_sources` - Inspiration Sources / 灵感来源

- **Type / 类型**: Array of objects / 对象数组
- **Description / 说明**: For works with multiple inspiration sources / 用于有多个灵感来源的作品
- **Example / 示例**:
  ```yaml
  inspiration_sources:
    - type: "direct-adaptation"
      original_code: "bs-o-s-006-night-raid"
      description: "Adapted from 'Night Raid', reconstructed core plot"
    - type: "character"
      reference: "Beastshield Bull Beastkin Soldier"
      description: "Character setting references bull beastkin settings in Beastshield universe"
  ```

---

## 4 Creation Information Section / 创作信息部分

### 4.1 Required Fields / 必填字段

#### 4.1.1 `author` - Author / 作者

- **Type / 类型**: String / 字符串
- **Description / 说明**: Author name or ID / 作者名称或ID
- **Example / 示例**: `memetic-singularity`

#### 4.1.2 `start_date` - Start Date / 开始日期

- **Type / 类型**: String / 字符串
- **Format / 格式**: `YYYY-MM-DD`
- **Example / 示例**: `2025-12-15`

### 4.2 Recommended Fields / 推荐字段

#### 4.2.1 `last_update` - Last Update Date / 最后更新日期

- **Type / 类型**: String / 字符串
- **Format / 格式**: `YYYY-MM-DD`
- **Example / 示例**: `2025-12-15`

#### 4.2.2 `universe_based_on` - Universe Based On / 基于的世界观

- **Type / 类型**: String / 字符串
- **Allowed Values / 允许值**:
    - `beastshield` - Beastshield universe / 兽盾世界观
    - `beastshield-reforged` - Beastshield Reforged universe / 兽盾新纪元世界观
    - `united-beasts-alliance` - United Beasts Alliance universe / 万兽盟世界观
    - `beastshield-paradise` - Beastshield Paradise universe / 兽盾乐园世界观
- **Example / 示例**: `beastshield-paradise`

### 4.3 Optional Fields / 可选字段

#### 4.3.1 `adaptation_info` - Adaptation Information / 改编信息

- **Type / 类型**: Object / 对象
- **When Required / 何时需要**: Required for adaptation works / 改编作品必填
- **Subfields / 子字段**:
    - `original_work` - Original work code / 原作品编码 (String / 字符串)
    - `original_title` - Original work title / 原作品标题 (String / 字符串)
    - `original_author` - Original author / 原作者 (String / 字符串, optional / 可选)
    - `adaptation_approach` - Adaptation approach / 改编方法 (String / 字符串)
        - Allowed values / 允许值: `faithful` (忠实), `reimagined` (重新想象), `loose` (松散改编), `theme-inversion` (
          主题反转)
    - `key_changes` - Summary of key changes / 关键变更总结 (String / 字符串, multi-line / 多行文本)
- **Example / 示例**:
  ```yaml
  adaptation_info:
    original_work: "bs-o-s-006-night-raid"
    original_title: "夜袭"
    adaptation_approach: "theme-inversion"
    key_changes: |
      1. Protagonist changed from tormentor to redeemer
      2. Theme changed from dark curiosity to gentle healing
      3. Ending changed from death to new life
      4. Added complete prequel and epilogue chapters
  ```

#### 4.3.2 `collaborators` - Collaborators / 合作者

- **Type / 类型**: Array of objects / 对象数组
- **Description / 说明**: For multi-author collaborative works / 用于多作者合作作品
- **Example / 示例**:
  ```yaml
  collaborators:
    - name: "Collaborator1"
      role: "Plot Design"
    - name: "Collaborator2"
      role: "Text Polishing"
  ```

#### 4.3.3 `translator` - Translator / 翻译者

- **Type / 类型**: String / 字符串
- **When Required / 何时需要**: Required for translation works / 翻译作品需要
- **Example / 示例**: `translator-name`

#### 4.3.4 `original_code` - Original Work Code / 原作编码

- **Type / 类型**: String / 字符串
- **When Required / 何时需要**: Required for adaptation works / 改编作品需要
- **Example / 示例**: `bs-o-c-ch-001-game-entry`

---

## 5 Special Cases / 特殊情况

### 5.1 Works Adapted from Multiple Sources / 改编自多个来源的作品

For works inspired by multiple original works, use the `inspiration_sources` field.
对于灵感来源于多个原作的作品，使用 `inspiration_sources` 字段。

**Example / 示例**:

```yaml
work:
  work_type: "inspired-by"
  inspiration_sources:
    - type: "direct-adaptation"
      original_code: "bs-o-s-006-night-raid"
      description: "Adapted from 'Night Raid', reconstructed core plot"
    - type: "character"
      reference: "Beastshield Bull Beastkin Soldier"
      description: "Character setting references bull beastkin settings in Beastshield universe"
```

### 5.2 Crossover Works / 跨界联动作品

For works that are crossovers between different universes.
对于不同世界观之间的跨界联动作品。

**Example / 示例**:

```yaml
work:
  code: "crossover-o-s-001-beasts-meet"
  title:
    chinese: "兽盾与万兽盟的相遇"
    english: "When Beastshield Meets UBA"
  work_type: "crossover"
  tags: [ "crossover", "beastshield", "uba", "encounter" ]

creation:
  universe_based_on: "mixed"
  crossover_worlds:
    - "beastshield"
    - "united-beasts-alliance"
```

### 5.3 Multi-Author Collaborative Works / 多作者合作作品

For works created by multiple authors.
对于由多位作者创作的作品。

**Example / 示例**:

```yaml
creation:
  author: "Main Author"
  collaborators:
    - name: "Collaborator1"
      role: "Plot Design"
    - name: "Collaborator2"
      role: "Text Polishing"
  contribution_summary: "Main author responsible for core plot and characters, Collaborator1 assisted with plot design, Collaborator2 performed text polishing"
```

---

## 6 Validation and Checking / 验证与检查

### 6.1 Format Validation / 格式验证

All `metadata.yaml` files must pass the following validations:
所有 `metadata.yaml` 文件必须通过以下验证：

1. **Valid YAML syntax** - No syntax errors / YAML语法正确 - 无语法错误
2. **Conforms to JSON Schema** - Meets specifications in `metadata-schema.json` / 符合JSON架构 - 符合
   `metadata-schema.json` 中的规范
3. **Complete required fields** - All required fields are filled / 必要字段完整 - 所有必填字段都已填写
4. **Code consistency** - `code` field exactly matches folder name / 编码一致 - `code` 字段与文件夹名完全一致

### 6.2 Common Errors / 常见错误

| Error / 错误                       | Cause / 原因                                                 | Solution / 解决方法                                                 |
|----------------------------------|------------------------------------------------------------|-----------------------------------------------------------------|
| `code` mismatch / `code` 不匹配     | Folder name doesn't match `code` field / 文件名与 `code` 字段不一致 | Ensure `code` exactly matches folder name / 确保 `code` 与文件夹名完全相同 |
| Missing required fields / 缺少必填字段 | Required fields not filled / 必填字段未填写                       | Refer to this guide to fill all required fields / 参考本指南填写所有必填字段 |
| Invalid date format / 日期格式错误     | Date not in `YYYY-MM-DD` format / 日期不是 `YYYY-MM-DD` 格式     | Use correct date format / 使用正确日期格式                              |
| Invalid enum value / 无效枚举值       | Value not in allowed list / 使用了不在允许列表中的值                   | Refer to allowed values list in this guide / 参考本指南的允许值列表        |

---

## 7 Best Practices / 最佳实践

### 7.1 File Naming Consistency / 文件命名一致性

- Folder name = `work.code` field / 文件夹名 = `work.code` 字段
- Chapter file format: `{work-code}-ch-{chapter-number}-{chapter-title}.md` / 章节文件名格式：
  `{作品编码}-ch-{章节号}-{章节标题简写}.md`
- Short story format: `{work-code}.md` / 短篇文件名格式：`{作品编码}.md`

### 7.2 Status Management / 状态管理

- Update `last_update` field when updating work / 更新作品时，同时更新 `last_update` 字段
- Change `status` to `completed` when work is finished / 作品完成后，将 `status` 改为 `completed`
- Set `promotion_status` to `eligible` for high-quality works / 高质量作品可设置为 `promotion_status: "eligible"`

### 7.3 Special Handling for Adaptation Works / 改编作品的特殊处理

- Adaptation works **must** fill `adaptation_info` / 改编作品**必须**填写 `adaptation_info`
- Explain relationship with original work in `README.md` / 在 `README.md` 中说明与原作的关系
- Respect original work, maintain consistency with core settings during adaptation / 尊重原作，在改编时保持核心设定的一致性

### 7.4 Tag Usage Suggestions / 标签使用建议

Use tags to improve work discoverability.
使用标签提高作品的可发现性。

| Category / 标签类别 | Example Tags / 示例标签                               |
|-----------------|---------------------------------------------------|
| Theme / 主题      | `redemption` (救赎), `dark` (黑暗), `adventure` (冒险)  |
| Emotion / 情感    | `wholesome` (治愈), `emotional` (情感), `tragic` (悲剧) |
| Type / 类型       | `rescue` (救援), `training` (训练), `daily-life` (日常) |
| Character / 角色  | `bull` (牛), `wolf` (狼), `tiger` (虎), `bear` (熊)   |
| Uniform / 制服    | `green-uniform` (绿制服), `black-uniform` (黑制服)      |

---

## 8 Examples / 示例

### 8.1 Completely Original Work / 完全原创作品

```yaml
work:
  code: "bsp-o-c-002-new-original-story"
  title:
    chinese: "全新原创故事"
    english: "Brand New Original Story"
  format: "chaptered-story"
  subtype: "side"
  status: "updating"
  location: "original-archives"
  promotion_status: "not_eligible"
  work_type: "full-original"
  tags: [ "original", "adventure", "character-growth" ]

creation:
  author: "Author Name"
  start_date: "2025-12-16"
  last_update: "2025-12-16"
  universe_based_on: "beastshield-paradise"
```

### 8.2 Adapted Expansion Work (Example: "Silent Night Watch") / 改编扩展作品（示例：《夜哨无声》）

```yaml
work:
  code: "bsp-o-c-001-g-277-green-bull-azhuang"
  title:
    chinese: "夜哨无声"
    english: "Silent Night Watch"
  format: "chaptered-story"
  subtype: "side"
  status: "completed"
  location: "original-archives"
  promotion_status: "eligible"
  work_type: "adapted-expansion"
  tags: [ "redemption", "rescue", "new-beginning", "adapted-from-dark" ]

creation:
  author: "memetic-singularity"
  start_date: "2025-12-15"
  last_update: "2025-12-15"
  universe_based_on: "beastshield-paradise"
  adaptation_info:
    original_work: "bs-o-s-006-night-raid"
    original_title: "夜袭"
    adaptation_approach: "theme-inversion"
    key_changes: |
      1. Protagonist changed from tormentor to redeemer
      2. Theme changed from dark curiosity to gentle healing
      3. Ending changed from death to new life
      4. Added complete prequel and epilogue chapters
```

### 8.3 Direct Adaptation Work / 直接改编作品

```yaml
work:
  code: "bs-a-c-001-faithful-adaptation"
  title:
    chinese: "忠实改编故事"
    english: "Faithful Adaptation Story"
  format: "chaptered-story"
  subtype: "side"
  status: "completed"
  location: "adaptation-works"
  promotion_status: "under_review"
  work_type: "direct-adaptation"

creation:
  author: "Adaptation Author"
  start_date: "2025-12-10"
  last_update: "2025-12-14"
  universe_based_on: "beastshield"
  original_code: "bs-o-c-ch-001-game-entry"
  translator: "Translator Name (if any)"
```

---

## 9 Updates and Maintenance / 更新与维护

### 9.1 Metadata Updates / 元数据更新

Update metadata when the following changes occur to the work:
当作品发生以下变化时，需要更新元数据：

1. **Adding new chapters** - Update `last_update` date / 添加新章节 - 更新 `last_update` 日期
2. **Work completion** - Change `status` to `completed` / 作品完结 - 将 `status` 改为 `completed`
3. **Work promotion** - Change `promotion_status` to `promoted` / 作品晋升 - 将 `promotion_status` 改为 `promoted`
4. **Author change** - Update `author` or add `collaborators` / 作者变更 - 更新 `author` 或添加 `collaborators`
5. **Title change** - Update `title` field / 标题变更 - 更新 `title` 字段

### 9.2 Version Control / 版本控制

It is recommended to explain metadata changes in Git commit messages.
建议在 Git 提交信息中说明元数据变更。

```
git commit -m "Update metadata: work completion status updated"
git commit -m "Fix metadata: correct spelling error in code field"
```

---

## 10 Help and Support / 帮助与支持

If you encounter problems:
如果遇到问题：

1. **Check examples** - Refer to existing work metadata in the project / 查看示例 - 参考项目中的现有作品元数据
2. **Validation check** - Run validation script to see specific errors / 验证检查 - 运行验证脚本查看具体错误
3. **Community discussion** - Ask questions in the project discussion area / 社区讨论 - 在项目讨论区提问
4. **Consult documentation** - Refer to relevant documents in the `docs/` directory / 查阅文档 - 参考 `docs/` 目录下的相关文档

---

*Last Updated / 最后更新: 2025-12-15*  
*Document Version / 文档版本: 1.0*  
*Author / 作者: memetic-singularity*