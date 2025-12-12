# Universal Story Template Guide (通用故事模板指南)

---

## Introduction 简介

This guide provides detailed instructions on how to use the Universal Story Template for creating
short stories, medium-length stories, and long serialized stories. The template supports multiple
story types with flexible configuration options, including a comprehensive character commentary
system.

本指南详细说明如何使用通用故事模板创建短篇、中篇和长篇连载故事。该模板支持多种故事类型，并提供灵活的配置选项，包含完整的角色评述系统。

---

## Getting Started 快速开始

### Step 1: Copy the Template

Copy the `universal-story-template-chinese.md` file from the `/templates/` directory to your story
directory.

第一步：复制模板
将 `universal-story-template-chinese.md` 从 `/templates/` 目录复制到您的故事目录。

### Step 2: Select Story Type

Choose your story type (Short, Chaptered, or Main Story) and remove the backtick ` from the
corresponding configuration block.

第二步：选择故事类型
选择您的故事类型（短篇、分章或主线故事），并删除对应配置块前的反引号`。

### Step 3: Fill in Configuration

Fill in the required information in the selected configuration block, such as title, story number,
and chapter details.

第三步：填写配置
在选中的配置块中填写所需信息，如标题、故事编号和章节详情。

### Step 4: Select Navigation Bar

Choose the appropriate navigation bar configuration based on your story type and chapter position.

第四步：选择导航栏
根据您的故事类型和章节位置选择合适的导航栏配置。

### Step 5: Write Your Content

Replace the placeholder text (`{{...}}`) with your actual story content, following the formatting
specifications.

第五步：编写内容
用您的实际故事内容替换占位符文本（`{{...}}`），并遵循格式规范。

---

## Story Types 故事类型

### Short Story (短篇故事)

- Single, self-contained file
- No chapter divisions
- Example prefix: `ss-001-`
- 单一、完整的故事文件
- 无章节划分
- 示例前缀：`ss-001-`

### Chaptered Story (分章故事)

- Multiple chapters, typically medium-length
- Can be standalone series
- Example prefix: `ms-001-`
- 多个章节，通常为中篇长度
- 可以是独立的系列故事
- 示例前缀：`ms-001-`

### Main Story (主线故事)

- Long serialized stories, usually the core narrative
- Extensive chapter structure
- Example prefix: `ms-main-001-`
- 长篇连载故事，通常是核心叙事
- 扩展的章节结构
- 示例前缀：`ms-main-001-`

---

## Configuration Details 配置详情

### Story Prefix (故事前缀)

- Short stories: `ss-` (e.g., `ss-001-`)
- Chaptered stories: `ms-` (e.g., `ms-001-`)
- Main stories: `ms-main-` (e.g., `ms-main-001-`)
- 短篇故事：`ss-`（例如：`ss-001-`）
- 分章故事：`ms-`（例如：`ms-001-`）
- 主线故事：`ms-main-`（例如：`ms-main-001-`）

### Numbering Format (编号格式)

- Use three-digit numbers for story identification (001, 002, etc.)
- Chapter numbers can be two or three digits (01, 001, etc.)
- Maintain consistent numbering within a series
- 使用三位数进行故事标识（001、002 等）
- 章节编号可使用两位或三位数（01、001 等）
- 在同一系列中保持编号一致

### Title Generation (标题生成)

- Short stories: `SS-{number}: {Chinese Title}`
- Chaptered stories: `MS-{story number}-{chapter number}: {Chapter Title}`
- Main stories: `Chapter {chapter number} {Chapter Title}`
- 短篇故事：`SS-{编号}: {中文标题}`
- 分章故事：`MS-{故事编号}-{章节号}: {章节标题}`
- 主线故事：`第{章节号}章 {章节标题}`

### Filename Conventions (文件名约定)

- Use lowercase letters and hyphens
- Include story type, number, and title abbreviation
- Example: `ss-001-flame-wraith.md`
- 使用小写字母和连字符
- 包含故事类型、编号和标题缩写
- 示例：`ss-001-flame-wraith.md`

---

## Navigation Bar Configuration 导航栏配置

### Short Stories (短篇故事)

[返回目录](`README.md`) | [返回项目主页](`../../../../../README.md`)

### Chaptered Stories - First Chapter (分章故事 - 第一章)

[返回目录](`content.md`) | [下一章](`ch2.md`) | [返回项目主页](`../../../../../README.md`)

### Chaptered Stories - Middle Chapters (分章故事 - 中间章节)

[上一章](`ch1.md`) | [返回目录](`content.md`) | [下一章](`ch3.md`) | [返回项目主页](
`../../../../../README.md`)

### Chaptered Stories - Final Chapter (分章故事 - 最后一章)

[上一章](`ch9.md`) | [返回目录](`content.md`) | [返回项目主页](`../../../../../README.md`)

### Main Stories - First Chapter (主线故事 - 第一章)

[返回目录](`content.md`) | [下一章](`ch2.md`) | [返回项目主页](`../../../../../README.md`)

### Main Stories - Middle Chapters (主线故事 - 中间章节)

[上一章](`ch1.md`) | [返回目录](`content.md`) | [下一章](`ch3.md`) | [返回项目主页](
`../../../../../README.md`)

### Main Stories - Final Chapter (主线故事 - 最后一章)

[上一章](`ch14.md`) | [返回目录](`content.md`) | [返回项目主页](`../../../../../README.md`)


---

## Text Formatting Specifications 正文格式规范

### Paragraph Spacing (段落间距)

- Keep one blank line between lines within a paragraph
- Keep one blank line between paragraphs
- 段落内的行之间保持一个空行
- 段落之间保持一个空行

### Bold Formatting for Settings (设定加粗格式)

The following elements should be bolded in the text:

以下元素应在文本中加粗：

1. **Characters** (角色): **Yan**, **Liang**, **Bear Guard**
2. **Proper Nouns** (专有名词): **Beast Shield Company**, **Blazing Flow Hidden Force**
3. **Locations** (地点): **Beast Shield Training Base**, **White City**
4. **Equipment/Props** (装备/道具): **Suppressor**, **Silver Needle**
5. **Organizations/Factions** (组织/势力): **Special Agent Bureau**, **Combat Group**
6. **Plot/Worldview Settings** (剧情/世界观设定): **Silver Needle Sealing Technique**, **All Male
   Beastmen**

### Dialogue Formatting (对话格式)

- Character dialogue should not be bolded (unless referring to a setting)
- Maintain original quotation format
- Example: "Who are you?" the Bear Guard asked.
- 角色对话不应加粗（除非涉及设定）
- 保持原始引号格式
- 示例："你是谁？"熊守卫问道。

### Example (示例)

**Yan** grabbed the **Bear Guard**'s throat and grasped his **bear dick**. The **Suppressor** on his
waist emitted a faint blue light.

**炎**掐住**熊守卫**的喉咙，握住了他的**熊屌**。他腰间的**抑制器**发出微弱的蓝光。

---

## Image Insertion 图片插入

### Image Reference Format (图片引用格式)

![Image Description](`../../images/story-type/filename.png`)

### Directory Structure (目录结构)

- Short stories: `../../images/short-stories/`
- Chaptered stories: `../../images/middle-stories/`
- Main stories: `../../images/main-story/`
- 短篇故事：`../../images/short-stories/`
- 分章故事：`../../images/middle-stories/`
- 主线故事：`../../images/main-story/`

### Examples (示例)

- Short story: `![Yan executing Tiger Guard](../../images/short-stories/ss-001-1-execution.png)`
- Chaptered story:
  `![Panda demonstrating skills](../../images/middle-stories/ms-001-03-panda-showcase.png)`
- Main story: `![Qin Feng drawing pistol](../../images/main-story/ch01-QinFengDrawsPistol.png)`
- 短篇故事：`![炎处决虎守卫](../../images/short-stories/ss-001-1-execution.png)`
- 分章故事：`![熊猫展示功夫](../../images/middle-stories/ms-001-03-panda-showcase.png)`
- 主线故事：`![勤峰掏出手枪](../../images/main-story/ch01-勤峰掏枪.png)`

---

## Chapter End Marks 章节结束标记

### Short Stories (短篇故事)

**End**

### Chaptered Stories (分章故事)

**End of Chapter 01**

### Main Stories (主线故事)

**End of Chapter 01**


---

## Chapter Epilogue Writing 章节结束语编写

### Overview 概述

After the main story content, each chapter includes an epilogue section that provides commentary on
all characters and events in the chapter. This section should be written in warm, casual language,
as if telling a friend about the story.

在主要故事内容之后，每个章节包含一个结束语部分，对本章所有角色和事件进行评述。这部分应用有温度的白话文撰写，就像给朋友讲故事一样。

### Worldview Setting Notes 世界观设定提示

This story world has a special setting: all characters are **Male Beastmen** with hermaphroditic
features:

1. **Physiological Features**: Possess both male genitalia (cock, testicles) and female breasts (can
   secrete milk)
2. **Reproduction Method**: Male-male reproduction, no need to explain birth logic
3. **Death Phenomena**: Characters may ejaculate and spray milk simultaneously when dying

本故事世界有特殊设定：所有角色均为**雄兽人**，但具有雌雄同体特征：

1. **生理特征**：同时拥有雄性生殖器（肉棒、睾丸）和雌性乳房（能分泌乳汁）
2. **繁衍方式**：男男生殖，无需解释生育逻辑
3. **死亡现象**：角色死亡时可能同时射精和喷奶

### Writing Structure 写作结构

#### Part 1: Deceased Commentary (死者评述)

Comment on all deceased characters in the chapter. Include their uniform color, characteristics,
cause of death, and emotional evaluation.

评述本章所有死去的角色。包括制服颜色、特征、死因和情感评价。

**Example 示例**:

【Green Uniform Tiger Guard】
That new recruit patrolling the corner, chest muscles bulging under his tight uniform...
Died without even knowing his killer's name, those tiger breasts never got touched before death.

【绿制服虎守卫】
那个在墙角巡逻的新兵，胸肌在紧身衣下鼓鼓的...
可怜，到死都不知道杀自己的人叫啥，那对虎奶到死都没机会让人碰一下。

#### Part 2: Living Commentary (生者评述)

Comment on all surviving characters in the chapter, including their current situation, choices, and
possible future fate.

评述本章所有活着的角色，包括当前处境、选择和可能的未来命运。

**Example 示例**:

【Yan】
This cold-faced killer has held countless male beastmen's cocks and breasts...
A craftsman in the post-apocalyptic world, making a living with this "craft."

【炎】
这个冷面杀手，握过无数雄兽人的命根子和奶子...
末世里的手艺人，靠这门"手艺"吃饭，对雄兽人的身体了如指掌。

#### Part 3: Story Reflection (故事感慨)

Share personal thoughts and feelings about the chapter's events, including emotional resonance,
philosophical reflections, or social criticism.

分享对本章事件的个人思考和感受，包括情感共鸣、哲学思考或社会批判。

**Example 示例**:

This world of only male beastmen has a unique cruelty to death...
When they're killed, the male cock will erect and ejaculate, the female breasts will leak or even
spray milk.

这个只有雄兽人的世界，死亡都带着一种独特的残酷...
他们被杀时，雄性的肉棒会勃起射精，雌性的乳房会渗奶甚至喷奶。

### Writing Tips 写作要点

1. Use conversational tone, not formal
2. Mention uniform colors naturally (e.g., "that Tiger Guard in green uniform")
3. Naturally include dual physiological features when describing characters
4. Express genuine emotions and personal feelings
5. Comment on every character, no matter how minor
6. No word limit - write as much as needed to fully express your thoughts

1. 用朋友聊天的语气，别太正式
2. 提到制服颜色时用自然的方式（如"那个穿绿制服的虎守卫"）
3. 描述角色时自然带出双重性征
4. 表达真实情感和个人感受
5. 每个角色都要评述，无论多么次要
6. 无字数限制 - 根据需要充分表达您的想法

---

## Default Values 默认值

If no configuration is provided, the following default values are used:

如果未提供配置，则使用以下默认值：

- Story Type: Short (故事类型：短篇)
- Story Prefix: `ss-` (故事前缀：`ss-`)
- Story Number: `001` (故事编号：`001`)
- Chapter Number: `01` (章节号：`01`)
- Chinese Title: Untitled Story (中文标题：未命名故事)
- English Title: Untitled Story (英文标题：Untitled Story)
- Navigation Bar: Short Story Navigation (导航栏：短篇故事导航)
- Chapter End Mark: Based on story type (章节结束标记：根据故事类型)

---

## Best Practices 最佳实践

### Consistency (一致性)

- Use consistent naming conventions throughout a series
- Maintain uniform formatting across all chapters
- Write epilogues in a consistent style and tone
- 在整个系列中使用一致的命名约定
- 在所有章节中保持统一的格式
- 以一致的风格和语气撰写结束语

### Character Tracking (角色追踪)

- Keep notes on all characters that appear
- Track character relationships and development
- Ensure deceased characters are properly memorialized in epilogues
- 记录所有出场角色
- 跟踪角色关系和发展
- 确保在结束语中适当纪念死去的角色

### File Organization (文件组织)

- Organize stories by type in appropriate directories
- Use clear, descriptive filenames
- Maintain separate directories for images by story type
- 按类型将故事组织到适当的目录中
- 使用清晰、描述性的文件名
- 按故事类型维护单独的图片目录

### Version Control (版本控制)

- Commit template changes separately from story content
- Use descriptive commit messages
- Tag major template updates for easy reference
- 将模板更改与故事内容分开提交
- 使用描述性的提交信息
- 为主要模板更新打标签以便参考

### Backup Strategy (备份策略)

- Regularly back up your story files
- Consider using cloud storage or version control systems
- Keep copies of character commentary for future reference
- 定期备份您的故事文件
- 考虑使用云存储或版本控制系统
- 保存角色评述副本以备将来参考

---

## Troubleshooting 故障排除

### Common Issues (常见问题)

#### Issue: Navigation links not working

**Solution**: Check the relative path in the navigation bar. Ensure it correctly points to the
target file.

问题：导航链接无效
解决方案：检查导航栏中的相对路径。确保它正确指向目标文件。

#### Issue: Images not displaying

**Solution**: Verify the image path and filename. Ensure the image file exists in the specified
directory.

问题：图片不显示
解决方案：验证图片路径和文件名。确保图片文件存在于指定目录中。

#### Issue: Bold formatting not applied

**Solution**: Ensure you're using double asterisks `**` around the text to be bolded.

问题：加粗格式未应用
解决方案：确保在要加粗的文本周围使用双星号`**`。

#### Issue: Uncertain about epilogue writing

**Solution**: Refer to the detailed examples in the template. Remember to comment on every character
and express genuine feelings.

问题：不确定如何写结束语
解决方案：参考模板中的详细示例。记住要评述每个角色并表达真实感受。

### Getting Help (获取帮助)

If you encounter issues not covered in this guide, please consult the project documentation or
contact the project maintainers.

如果您遇到本指南未涵盖的问题，请查阅项目文档或联系项目维护者。

---

## Conclusion 结论

The Universal Story Template provides a flexible and consistent framework for creating stories of
various lengths and types. The new epilogue system adds depth and emotional resonance to your
stories, allowing you to reflect on character fates and share personal insights.

通用故事模板为创建各种长度和类型的故事提供了灵活一致的框架。新的结束语系统为您的故事增加了深度和情感共鸣，让您能够反思角色命运并分享个人见解。

Remember to regularly update your template knowledge as the template evolves, and don't hesitate to
customize the template to suit your specific needs while maintaining core formatting standards.

请记住，随着模板的发展，定期更新您的模板知识，并且不要犹豫根据您的特定需求自定义模板，同时保持核心格式标准。

Happy writing!

祝您写作愉快！

---

*Last updated: 2025-12-12*
*最后更新：2025-12-12*
