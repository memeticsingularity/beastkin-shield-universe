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