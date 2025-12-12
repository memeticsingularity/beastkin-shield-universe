# 通用故事模板使用指南 3.0

---

## 简介

本指南详细说明如何使用通用故事模板（Universal Story
Template）来创建短篇、中篇和长篇连载故事。该模板支持多种故事类型，提供灵活的配置选项，并包含一套完整的角色评述系统。请根据您的创作需求，遵循本指南的步骤与规范进行操作。

---

## 快速开始

1. **复制模板**：从 `/templates/` 目录中将 `universal-story-template-chinese.md` 文件复制到您的故事目录。
2. **选择类型**：在模板的“配置区”选择您的故事类型（短篇、分章或主线长篇），并删除所选配置块前的反引号 \`。
3. **填写配置**：在激活的配置块中填写故事编号、标题、章节信息等。
4. **选择导航栏**：根据故事类型和章节位置（如第一章、中间章、最终章），选择合适的导航栏配置。
5. **编写内容**：替换所有 `{{...}}` 占位符，填入您的故事正文、评述等内容，并遵循下文所述的格式规范。

---

## 故事类型说明

* **短篇故事**：独立、完整的单文件故事，无章节划分。文件名示例：`ss-001-flame-wraith.md`
* **分章故事**：包含多个章节的中篇或系列故事。文件名示例：`ms-001-01-infiltration.md`
* **主线长篇**：作为项目核心叙事的超长篇连载故事。文件名示例：`ms-main-001-ch01-shadows.md`

---

## 配置详情

* **故事前缀**：
    * 短篇：`ss-`
    * 分章：`ms-`
    * 主线：`ms-main-`
* **编号格式**：故事序号使用三位数（如001）；章节号可使用两或三位数（如01或001）。
* **标题生成**：
    * 短篇：`SS-{序号}: {中文标题}`
    * 分章：`MS-{故事序号}-{章节号}: {章节标题}`
    * 主线：`第{章节号}章 {章节标题}`
* **文件名**：使用小写字母和连字符，包含类型、编号及标题缩写。

---

## 导航栏配置选择

根据您的故事类型和章节位置，从模板中提供的7种配置里选择其一：

1. **短篇故事导航**
2. **分章故事-第一章**
3. **分章故事-中间章节**
4. **分章故事-最后一章**
5. **主线长篇-第一章**
6. **主线长篇-中间章节**
7. **主线长篇-最后一章**

---

## 正文格式规范

1. **段落间距**：行与行之间、段落与段落之间均保持一个空行。
2. **设定加粗**：以下元素需使用 `**加粗**`：
    * 角色姓名（如 **炎**、**熊守卫**）
    * 专有名词、地点、装备道具
    * 组织势力、剧情/世界观设定
3. **对话格式**：角色对话本身不加粗，保持原有引号格式。例如：“你是谁？”**熊守卫**问道。

---

## 图片插入

使用格式：`![图片描述](相对路径/图片文件名.png)`

* **短篇故事**：`../../images/short-stories/`
* **分章故事**：`../../images/middle-stories/`
* **主线故事**：`../../images/main-story/`

---

## 章节结束标记

* **短篇故事**：`**完**`
* **分章/主线故事**：`**第{章节号}章完**`

---

## 故事评述与感慨写作指南

此部分位于正文之后，用于以感性、口语化的语言评述本章角色和事件。
> *注意：本世界观中所有角色均为具有双重性征的雄兽人。*

1. **他们最后的故事**：评述本章中所有死去的角色。按出场顺序，用【】标注其身份与制服颜色（如【绿制服虎守卫】），描述其特征、死因并表达感慨。
2. **还活着的人们**：评述本章中所有幸存角色，分析其处境、选择与可能的命运。
3. **故事感慨**：以第一人称分享对本章故事的整体感受、对世界观或角色命运的思考。

**写作要点**：语气像与朋友聊天，自然提及角色的双重生理特征，为每个角色（无论主次）写下评述，无字数限制。

---

## 默认值

若未提供任何配置，模板将使用以下默认值：

* 故事类型：短篇
* 故事前缀：`ss-`
* 故事序号：`001`
* 章节号：`01`
* 中/英文标题：未命名故事 / Untitled Story

---

## 故障排除

* **导航链接失效**：检查导航栏中的相对路径是否正确指向目标文件。
* **图片不显示**：确认图片路径和文件名是否正确，图片文件是否存在于指定目录。
* **格式未生效**：确保加粗使用 `**文本**`，并遵循段落空行规范。
* **评述不知如何下笔**：参考模板中的详细示例，从描述角色外貌、制服、死亡/生存细节开始，融入个人真实感受。

---

## 结论

通用故事模板为您提供了创作各类故事的灵活框架。统一的格式有助于项目维护，而独特的评述系统能让您深入反思角色命运，为故事增添深度与情感共鸣。

祝您创作愉快！

*最后更新：2025-12-12*

---

# Universal Story Template User Guide 3.0

---

## Introduction

This guide provides detailed instructions on how to use the Universal Story Template for creating
short stories, medium-length stories, and long serialized stories. The template supports multiple
story types with flexible configuration options and includes a comprehensive character commentary
system. Please follow the steps and specifications in this guide according to your creative needs.

---

## Getting Started

1. **Copy the Template**: Copy the `universal-story-template-chinese.md` file from the `/templates/`
   directory to your story directory.
2. **Select Type**: In the "Configuration Area" of the template, choose your story type (Short,
   Chaptered, or Main Story) and remove the backtick \` in front of the selected configuration
   block.
3. **Fill Configuration**: Fill in the story number, title, chapter information, etc., in the
   activated configuration block.
4. **Select Navigation Bar**: Choose the appropriate navigation bar configuration based on the story
   type and chapter position (e.g., First Chapter, Middle Chapter, Final Chapter).
5. **Write Content**: Replace all `{{...}}` placeholders with your story text, commentary, etc.,
   following the formatting specifications described below.

---

## Story Types

* **Short Story**: Independent, single-file stories with no chapter divisions. Example filename:
  `ss-001-flame-wraith.md`
* **Chaptered Story**: Medium-length or serialized stories containing multiple chapters. Example
  filename: `ms-001-01-infiltration.md`
* **Main Story**: Very long serialized stories serving as the core narrative of a project. Example
  filename: `ms-main-001-ch01-shadows.md`

---

## Configuration Details

* **Story Prefix**:
    * Short: `ss-`
    * Chaptered: `ms-`
    * Main: `ms-main-`
* **Numbering Format**: Use three-digit numbers for story IDs (e.g., 001). Chapter numbers can be
  two or three digits (e.g., 01 or 001).
* **Title Generation**:
    * Short: `SS-{number}: {Chinese Title}`
    * Chaptered: `MS-{story number}-{chapter number}: {Chapter Title}`
    * Main: `Chapter {chapter number} {Chapter Title}`
* **Filename**: Use lowercase letters and hyphens, including type, number, and title abbreviation.

---

## Navigation Bar Configuration Selection

Choose one of the seven configurations provided in the template based on your story type and chapter
position:

1. Short Story Navigation
2. Chaptered Story - First Chapter
3. Chaptered Story - Middle Chapters
4. Chaptered Story - Final Chapter
5. Main Story - First Chapter
6. Main Story - Middle Chapters
7. Main Story - Final Chapter

---

## Text Formatting Specifications

1. **Paragraph Spacing**: Maintain one blank line between lines and between paragraphs.
2. **Bold for Settings**: The following elements must be bolded using `**bold**`:
    * Character names (e.g., **Yan**, **Bear Guard**)
    * Proper nouns, locations, equipment/props
    * Organizations/factions, plot/worldview settings
3. **Dialogue Format**: Character dialogue itself should not be bolded; keep the original quotation
   format. Example: "Who are you?" asked the **Bear Guard**.

---

## Image Insertion

Use the format: `![Image Description](relative-path/filename.png)`

* **Short Stories**: `../../images/short-stories/`
* **Chaptered Stories**: `../../images/middle-stories/`
* **Main Stories**: `../../images/main-story/`

---

## Chapter End Marks

* **Short Story**: `**End**`
* **Chaptered/Main Story**: `**End of Chapter {chapter number}**`

---

## Story Commentary and Reflection Writing Guide

This section follows the main text and is used to comment on the chapter's characters and events in
a感性, conversational tone.
> *Note: In this story world, all characters are Male Beastmen with hermaphroditic features.*

1. **Their Final Stories**: Comment on all deceased characters in this chapter. In order of
   appearance, mark their identity and uniform color with【】(e.g., 【Green Uniform Tiger Guard】),
   describe their features, cause of death, and express reflections.
2. **The People Still Alive**: Comment on all surviving characters in this chapter, analyzing their
   situation, choices, and possible fate.
3. **Story Reflection**: Share your overall feelings about this chapter in the first person,
   including thoughts on the worldview or character destinies.

**Writing Tips**: Use a tone as if talking to a friend, naturally mention characters' dual
physiological features, write commentary for every character (no matter how minor), with no word
limit.

---

## Default Values

If no configuration is provided, the template will use the following default values:

* Story Type: Short
* Story Prefix: `ss-`
* Story Number: `001`
* Chapter Number: `01`
* Chinese/English Title: 未命名故事 / Untitled Story

---

## Troubleshooting

* **Navigation Links Not Working**: Check if the relative path in the navigation bar correctly
  points to the target file.
* **Images Not Displaying**: Verify the image path and filename are correct, and the image file
  exists in the specified directory.
* **Formatting Not Applied**: Ensure bolding uses `**text**` and paragraph spacing rules are
  followed.
* **Uncertain About Commentary Writing**: Refer to the detailed examples in the template. Start by
  describing the character's appearance, uniform, details of death/survival, and incorporate genuine
  personal feelings.

---

## Conclusion

The Universal Story Template provides you with a flexible framework for creating various types of
stories. The unified format aids project maintenance, and the unique commentary system allows you to
deeply reflect on character destinies, adding depth and emotional resonance to your stories.

Happy Writing!

*Last updated: 2025-12-12*