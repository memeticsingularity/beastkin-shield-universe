# Beastkin Shield Universe Work Naming & Organization Guide

## Introduction

This document defines the naming rules and organizational structure for works within the Beastkin
Shield Universe project. All contributors must follow this guide when creating new works.

## Work Coding System

Each work has a unique code for identification and organization. The code format is as follows:

```
[world]-[type]-[format]-[number]-[work-name]
```

### Code Example

```
bs-a-c-001-a-new-gamer
│    │   │   │    └─ Work name (kebab-case, lowercase English with hyphens)
│    │   │   └─ Number (three digits, starting from 001)
│    │   └─ Format (c=chaptered-story, s=short-story)
│    └─ Type (a=adaptation, o=original, c=crossover)
└─ World abbreviation
```

### Field Descriptions

| Field         | Values                                                | Meaning                               | Example               |
|---------------|-------------------------------------------------------|---------------------------------------|-----------------------|
| **World**     | `bs`, `bsr`, `uba`                                    | World abbreviation                    | `bs` = beastshield    |
| **Type**      | `a` = adaptation<br>`o` = original<br>`c` = crossover | Creation type                         | `a` = adaptation work |
| **Format**    | `c` = chaptered-story<br>`s` = short-story            | Work format                           | `c` = chaptered story |
| **Number**    | `001`, `002`, ...                                     | Sequence number                       | `001` = first work    |
| **Work Name** | kebab-case                                            | English name (lowercase with hyphens) | `a-new-gamer`         |

### World Abbreviation Reference

| Abbreviation | Full Name              | Description                  |
|--------------|------------------------|------------------------------|
| `bs`         | Beastshield            | Beastshield world            |
| `bsr`        | Beastshield Reforged   | Beastshield Reforged world   |
| `uba`        | United Beasts Alliance | United Beasts Alliance world |

## Directory Structure

All adaptation works are placed in the `adaptation-works` directory of their respective world,
organized into two subdirectories by format:

### Beastshield World Example

```
worlds/beastshield/adaptation-works/
├── chaptered-story/                     # Chaptered story directory
│   └── bs-a-c-001-a-new-gamer/         # Chaptered story work
│       ├── README.md                    # Work introduction
│       ├── metadata.yaml                # Metadata file
│       ├── ch001-new-chapter.md         # Chapter 1
│       ├── ch002-new-chapter.md         # Chapter 2
│       ├── settings/                    # Story-specific settings
│       │   └── story-setting.md
│       └── images/                      # Image resources
│           └── bs_ch001_1_new_image.png
│
└── short-story/                         # Short story directory
    └── bs-a-s-001-first-blood/         # Short story work
        ├── README.md
        ├── metadata.yaml
        ├── new-short-story.md          # Short story content
        ├── settings/
        │   └── story-setting.md
        └── images/
            └── bs_ch001_1_new_image.png
```

## File Specifications

### 1. Required Files

Each work directory must contain the following files:

#### Chaptered Story (chaptered-story)

- `README.md` - Work introduction
- `metadata.yaml` - Metadata
- `ch001-title.md` - Chapter 1 (subsequent chapters numbered sequentially)
- `settings/story-setting.md` - Story-specific settings
- `images/` - Image resources directory

#### Short Story (short-story)

- `README.md` - Work introduction
- `metadata.yaml` - Metadata
- `story-title.md` - Short story content file
- `settings/story-setting.md` - Story-specific settings
- `images/` - Image resources directory

### 2. Metadata File (metadata.yaml)

```yaml
# Work metadata
work:
  code: "bs-a-c-001-a-new-gamer"  # Work code
  title:
    chinese: "新玩家"              # Chinese title
    english: "A New Gamer"        # English title
  format: "chaptered-story"       # chaptered-story / short-story
  status: "updating"              # updating / completed

# Creation information
creation:
  author: "Author Name"          # Author name
  start_date: "2024-01-01"       # Start date
  last_update: "2024-01-01"      # Last update date
  based_on: "beastshield"        # Which world is it based on
```

### 3. README.md Template

```markdown
# [Work Title]

## Basic Information

- **Code**: `bs-a-c-001-a-new-gamer`
- **Status**: Updating
- **Author**: Author Name
- **Start Date**: 2024-01-01

## Story Summary

Write the story summary here...

## Chapter List

- [Chapter 1: New Chapter](`ch001-new-chapter.md`)
- [Chapter 2: New Chapter](`ch002-new-chapter.md`)

## Setting Notes

This story uses the following special settings:

- [View Detailed Settings](`settings/story-setting.md`)
```

### 4. Chapter File Naming Convention

Chaptered story files use the following format:

```
ch001-chapter-title.md
ch002-chapter-title.md
...
```

### 5. Image File Naming Convention

Image files use the following format:

```
[world]_[chapter]_[number]_[description].png
```

Example:

```
bs_ch001_1_main_character.png
bs_ch002_3_battle_scene.jpg
```

## Steps to Create a New Work

1. **Determine Work Information**
    - Select world (bs/bsr/uba)
    - Determine work type (use "a" for adaptation)
    - Select format (chaptered-story "c" / short-story "s")
    - Determine number (check existing works, use next number)
    - Determine work name (English kebab-case)

2. **Create Work Directory**
    - In the `adaptation-works` directory of the corresponding world
    - Select `chaptered-story` or `short-story` subdirectory
    - Create new folder with full code name

3. **Copy Template Files**
    - Copy corresponding template from `templates/adaption-work-template/`
    - Modify folder name and internal file content

4. **Modify File Content**
    - Update all information in `metadata.yaml`
    - Update content in `README.md`
    - Update chapter or short story files
    - Update settings in `settings/story-setting.md`
    - Add images to `images/` directory

## Examples

### Creating a New Chaptered Story

To create a new adaptation chaptered story based on Beastshield, the third work in this format,
named "dragon-quest":

1. Code: `bs-a-c-003-dragon-quest`
2. Directory: `worlds/beastshield/adaptation-works/chaptered-story/bs-a-c-003-dragon-quest/`
3. Copy template:
   `templates/adaption-work-template/chaptered-story/bs-a-c-000-a-new-chaptered-story/`
4. Modify files:
    - Rename folder
    - Update code, title, etc. in `metadata.yaml`
    - Update content in `README.md`
    - Update chapter file content

### Creating a New Short Story

To create a new adaptation short story based on Beastshield, the second work in this format, named "
winter-wolf":

1. Code: `bs-a-s-002-winter-wolf`
2. Directory: `worlds/beastshield/adaptation-works/short-story/bs-a-s-002-winter-wolf/`
3. Copy template: `templates/adaption-work-template/short-story/bs-a-s-000-a-new-short-story/`
4. Modify files:
    - Rename folder
    - Update code, title, etc. in `metadata.yaml`
    - Update content in `README.md`
    - Update short story file content

## Important Notes

1. **Code Uniqueness**: Ensure work codes are unique and not duplicated
2. **Number Continuity**: Numbers should increment sequentially within the same format
3. **File Naming**: Use lowercase letters and hyphens, avoid special characters
4. **Image Referencing**: Correctly reference image paths in story files
5. **Status Updates**: Change status to `completed` in `metadata.yaml` when work is finished

## Template Location

The project provides standard templates at:

- Chaptered story template: `templates/adaption-work-template/chaptered-story/`
- Short story template: `templates/adaption-work-template/short-story/`

Use these templates as starting points to ensure consistent structure across all works.

---

*Last Updated: 2025-12-13*  
*Document Version: 1.0.0*