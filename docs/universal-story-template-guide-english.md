# Universal Story Template User Guide 4.0 (New Naming System Adapted)

---

## Introduction

This guide provides detailed instructions on how to use the new naming system adapted Universal
Story Template for creating short stories, chaptered (main/side) stories. The template fully adheres
to the Beastkin Shield Universe standardized naming system, supporting original works, adaptations,
crossovers, and includes a comprehensive character commentary system. Please follow the steps and
specifications in this guide according to your creative needs.

---

## Getting Started

1. **Select Template**: Copy the appropriate template from the `/templates/` directory based on the
   language of creation:
    - Chinese creation: `universal-story-template-chinese.md`
    - English creation: `universal-story-template-english.md`
2. **Determine Nature**: Clarify whether the work is original (`o`), adaptation (`a`), or
   crossover (`c`).
3. **Fill Configuration**: In the "Configuration Area" of the template, fill in the world code, work
   nature, work format, work number, work identifier, and other core information.
4. **Select Navigation Bar**: Choose the appropriate navigation bar configuration based on the work
   nature and chapter position (e.g., First Chapter, Middle Chapter, Final Chapter).
5. **Write Content**: Replace all `{{...}}` placeholders with your story text, commentary, etc.,
   following the formatting specifications described below.

---

## New Naming System Details

### Work Code Format

```
[world]-[nature]-[format]-[number]-[work-name]
```

Example: `bs-o-c-001-flame-wraith`

### Field Descriptions

| Field         | Possible Values                                                                           | Meaning                                |
|---------------|-------------------------------------------------------------------------------------------|----------------------------------------|
| **World**     | `bs` (Beastshield)<br>`bsr` (Beastshield Reforged)<br>`uba` (United Beasts Alliance)      | The world the work belongs to          |
| **Nature**    | `o` (original) - Original<br>`a` (adaptation) - Adaptation<br>`c` (crossover) - Crossover | The creative nature of the work        |
| **Format**    | `c` (chaptered-story) - Chaptered story<br>`s` (short-story) - Short story                | The structural format of the work      |
| **Number**    | Three-digit number, e.g., `001`                                                           | The serial number within similar works |
| **Work Name** | English kebab-case, e.g., `flame-wraith`                                                  | The English identifier for the work    |

### File Naming Convention

- **Short Story**: `{world}-{nature}-{format}-{number}-{work-name}.md`
  Example: `bs-o-s-001-farm-inn.md`
- **Chaptered Story**: `{world}-{nature}-{format}-{number}-{work-name}-ch{chapter-number}.md`
  Example: `bs-o-c-001-flame-wraith-ch001.md`
- **Adaptation Chaptered Story** (within work directory):
  `ch{chapter-number}-{chapter-English-title-short}.md`
  Example: `ch001-infiltration.md`

---

## Directory Structure Specifications

### Original Works (`o`)

```
worlds/{world}/original-archives/{language}/{format}/{subtype}/
```

- **Language**: `chinese` or `english`
- **Format**: `short-story` (short) or `chaptered-story` (chaptered)
- **Subtype** (chaptered only): `main` (main storyline) or `side` (side storyline)

Examples:

```
worlds/bs/original-archives/chinese/chaptered-story/main/bs-o-c-001-flame-wraith-ch001.md
worlds/bs/original-archives/english/short-story/bs-o-s-001-farm-inn.md
```

### Adaptation Works (`a`)

```
worlds/{world}/adaptation-works/{format}/{complete-work-code}/
```

- **Format**: `short-story` (short) or `chaptered-story` (chaptered)
- **Complete Work Code**: e.g., `bs-a-c-001-a-new-gamer`

Examples:

```
worlds/bs/adaptation-works/chaptered-story/bs-a-c-001-a-new-gamer/ch001-new-chapter.md
worlds/bs/adaptation-works/short-story/bs-a-s-001-first-blood/new-short-story.md
```

---

## Configuration Details

### Core Configuration Items

1. **World Code**: `bs`, `bsr`, `uba`
2. **Work Nature**: `o` (original), `a` (adaptation), `c` (crossover)
3. **Work Format**: `c` (chaptered story), `s` (short story)
4. **Work Number**: Three-digit number, e.g., `001`
5. **Work Identifier**: English kebab-case, e.g., `flame-wraith`
6. **Work Title**: Complete Chinese and English titles

### Additional Configuration for Chaptered Stories

1. **Chaptered Story Subtype**: `main` (main storyline), `side` (side storyline)
2. **Chapter Number**: Three-digit number, e.g., `001`
3. **Chapter Title**: Chinese and English chapter titles
4. **Total Chapters** (optional): e.g., `15`

### Path Configuration

- **Original Works**: Need to select language (`chinese`/`english`)
- **Adaptation Works**: No language selection, directly enter work directory

---

## Navigation Bar Configuration Selection

Based on work nature and chapter position, choose one of the eight configurations provided in the
template:

1. Short Original Navigation
2. Short Adaptation Navigation
3. Chaptered Original - First Chapter
4. Chaptered Original - Middle Chapters
5. Chaptered Original - Final Chapter
6. Chaptered Adaptation - First Chapter
7. Chaptered Adaptation - Middle Chapters
8. Chaptered Adaptation - Final Chapter

---

## Text Formatting Specifications

1. **Paragraph Spacing**: Maintain one blank line between lines and between paragraphs.
2. **Bold for Settings**: The following elements must be bolded using `**bold**`:
    - Character names (e.g., **Yan**, **Bear Guard**)
    - Proper nouns, locations, equipment/props
    - Organizations/factions, plot/worldview settings
3. **Dialogue Format**: Character dialogue itself should not be bolded; keep the original quotation
   format. Example: "Who are you?" asked the **Bear Guard**.
4. **Original Blank Line Handling**: If the original text has blank lines, ensure the Markdown
   conversion still maintains paragraph separation.

---

## Image Insertion

Use the format: `![Image Description](relative-path/filename)`

### Original Works

- **Short Story**: `../../images/short-stories/{world}_{nature}{format}{number}_1_description.png`
- **Chaptered Story**:
  `../../images/chaptered-story/{subtype}/{world}_{nature}{format}{number}_ch{chapter-number}_1_description.png`

### Adaptation Works

- **Short Story**: `../images/{world}_{nature}{format}{number}_1_description.png`
- **Chaptered Story**: `../images/{world}_ch{chapter-number}_1_description.png`

---

## Chapter End Marks

- **Short Story**: `**完**` (Chinese) / `**End**` (English)
- **Chaptered Story**: `**第{chapter-number}章完**` (Chinese) /
  `**End of Chapter {chapter-number}**` (English)

---

## Story Commentary and Reflection Writing Guide

This section follows the main text and is used to comment on the chapter's characters and events in
a感性, conversational tone.

> *Note: In this story world, all characters are Male Beastmen with hermaphroditic features.*

### Writing Structure

1. **Their Final Stories**: Comment on all deceased characters in this chapter. In order of
   appearance, mark their identity and uniform color with【】, describe their features, cause of
   death, and express reflections.
2. **The People Still Alive**: Comment on all surviving characters in this chapter, analyzing their
   situation, choices, and possible fate.
3. **Story Reflection**: Share your overall feelings about this chapter in the first person,
   including thoughts on the worldview or character destinies.

### Format Requirements

- Commentary content: keep one blank line between lines, and one blank line between paragraphs.
- If the original commentary has multiple natural paragraphs, use divider `---` for separation.
- Use a tone as if talking to a friend, naturally mention characters' dual physiological features.
- Write commentary for every character (no matter how minor), with no word limit.

---

## Default Values

If no configuration is provided, the template will use the following default values:

- World Code: `bs`
- Work Nature: `o`
- Work Format: `s`
- Work Number: `001`
- Work Identifier: `untitled-story`
- Chinese Title: 未命名故事
- English Title: Untitled Story
- Chaptered Story Subtype: `main`
- Chapter Number: `001`
- Language: `chinese`
- Navigation Bar Configuration: Short Original Navigation

---

## Troubleshooting

- **Navigation Links Not Working**: Check if the relative path in the navigation bar correctly
  points to the target file. Note that original and adaptation works have different path structures.
- **Images Not Displaying**: Verify the image path and filename are correct, and the image file
  exists in the specified directory.
- **Formatting Not Applied**: Ensure bolding uses `**text**` and paragraph spacing rules are
  followed.
- **Uncertain About Commentary Writing**: Refer to the detailed examples in the template. Start by
  describing the character's appearance, uniform, details of death/survival, and incorporate genuine
  personal feelings.

---

## Conclusion

The Universal Story Template under the new naming system provides you with a more standardized and
structured creative framework. The unified coding system and directory structure aid project
maintenance and collaboration, while the comprehensive commentary system allows you to deeply
reflect on character destinies, adding depth and emotional resonance to your stories.

Happy Writing!

*Last updated: 2025-12-13*