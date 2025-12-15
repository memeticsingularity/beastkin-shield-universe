# Beastkin Universe Work Naming & Organization Guide 2.1.1

## Introduction

This document defines the naming rules and organizational structure for works within the Beastkin
Shield Universe project. All contributors must follow this guide when creating new works. This guide
has been updated based on the latest project structure to ensure uniform naming formats for all work
types, with chapter titles being mandatory.

## Core Concept Definitions

Before diving into details, please understand the following core concepts:

1. **Original Archives (`original-archives`)**  
   Stores official works created by the **world's original author** (or the project core team).
   These works form the core narrative foundation of the world.

2. **Adaptation Works (`adaptation-works`)**  
   Stores **adaptation works** created by community contributors based on official works. These
   works can be considered derivative interpretations of the official world. Adaptation works that
   are completed and recognized can apply for **promotion**.

3. **Promotion Paths**
    - **Path One: Promotion to Official Original Work**  
      Excellent adaptation works can be **migrated** entirely to the `original-archives` of the
      corresponding world, becoming part of that world's canon.
    - **Path Two: Promotion to Independent World**  
      Exceptionally outstanding adaptation works, if they have complete and independent world
      settings, can apply to become a new world module under `worlds/`.

4. **Main Storyline Directory Structure**  
   Main storyline files are placed directly in the `main/` directory, but subdirectories (such as
   `volume-1/`) can be created for logical organization based on the work's internal structure (
   e.g., multi-volume works). This is considered **internal work structure** and does not affect the
   overall project specifications.

## Work Coding System

Each work has a unique code for identification and organization. The code format is as follows:

```
[world]-[nature]-[format]-[number]-[work-name]
```

### Code Example

```
bs-a-c-001-a-new-gamer
│    │   │   │    └─ Work name (kebab-case, lowercase English with hyphens)
│    │   │   └─ Number (three digits, starting from 001)
│    │   └─ Format (c=chaptered-story, s=short-story)
│    └─ Nature (a=adaptation, o=original, c=crossover)
└─ World abbreviation
```

### Field Descriptions

| Field         | Values                                                | Meaning                               | Example               |
|---------------|-------------------------------------------------------|---------------------------------------|-----------------------|
| **World**     | `bs`, `bsr`, `uba`                                    | World abbreviation                    | `bs` = beastshield    |
| **Nature**    | `a` = adaptation<br>`o` = original<br>`c` = crossover | Creation nature                       | `a` = adaptation work |
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

### Original Works (`original-archives`)

Stores works created by official original authors, maintained by the project core team.

```
worlds/world/original-archives/
├── chinese/                          # Chinese works
│   ├── chaptered-stories/            # Chaptered stories
│   │   ├── main/                     # Main storyline
│   │   │   └── Main chapter files    # Files placed directly, no work directories
│   │   └── side/                     # Side storyline
│   │       └── work-code-directory/  # Independent directory for each side story
│   │           └── Side chapter files
│   └── short-stories/                # Short stories
│       └── Short story files         # Files placed directly
└── english/                          # English works
    ├── chaptered-stories/
    │   ├── main/
    │   └── side/
    └── short-stories/
```

### Adaptation Works (`adaptation-works`)

Stores adaptation works created by community contributors, maintained by the community.

```
worlds/world/adaptation-works/
├── chaptered-stories/                # Chaptered stories directory
│   └── complete-work-code/           # Independent directory for each work
│       ├── README.md
│       ├── metadata.yaml
│       ├── Adaptation chapter files  # Consistent format with original works
│       ├── settings/
│       │   └── story-setting.md
│       └── images/
└── short-stories/                    # Short stories directory
    └── complete-work-code/
        ├── README.md
        ├── metadata.yaml
        ├── Adaptation short story files  # Consistent format with original works
        ├── settings/
        │   └── story-setting.md
        └── images/
```

## File Naming Conventions

### **Core Principle: All files must include chapter title/work title**

### 1. Original Work File Name Format

#### **Main Storyline (main)**

- **Format**: `{world-code}-o-c-ch-{chapter-number}-{chapter-title-short}.md`
- **Example**: `bs-o-c-ch-001-a-bloody-beginning.md`
- **Location**: `original-archives/language/chaptered-stories/main/`
- **Note**: Main stories allow creating subdirectories (e.g., `volume-1/`) for logical organization
  based on work needs

#### **Side Storyline (side)**

- **Format**:
  `{world-code}-o-c-{side-number}-{work-name}-ch-{chapter-number}-{chapter-title-short}.md`
- **Example**: `bs-o-c-001-yan-liang-ch-001-infiltration.md`
- **Location**: `original-archives/language/chaptered-stories/side/{work-code-directory}/`

#### **Short Stories**

- **Format**: `{world-code}-o-s-{work-number}-{work-name}.md`
- **Example**: `bs-o-s-001-farm-inn.md`
- **Location**: `original-archives/language/short-stories/`

### 2. Adaptation Work File Name Format

#### **Chaptered Stories**

- **Format**: `{complete-work-code}-ch-{chapter-number}-{chapter-title-short}.md`
- **Example**: `bs-a-c-001-a-new-gamer-ch-001-infiltration.md`
- **Location**: `adaptation-works/chaptered-stories/{complete-work-code}/`

#### **Short Stories**

- **Format**: `{complete-work-code}.md`
- **Example**: `bs-a-s-001-first-blood.md`
- **Location**: `adaptation-works/short-stories/{complete-work-code}/`

### 3. Special Notes

1. **Chapter Title Mandatory**: All chaptered stories must include chapter title short form
2. **Hyphen Usage**: Use `-ch-` before chapter numbers to maintain format consistency
3. **Title Short Form Rules**:
    - Lowercase English, connected with hyphens
    - Concise and reflective of chapter core content
    - Avoid special characters and spaces
4. **Main vs Side Difference**:
    - Main: No work number and work name before `-ch-`
    - Side: Has side number and work name before `-ch-`

## Work Promotion Mechanism

### From Adaptation Work to Original Work

When a community adaptation work meets the following conditions, it can apply for promotion to
`original-archives`:

1. **Completion status**: The work has been completed
2. **High quality**: Widely recognized by the community
3. **Setting consistency**: No conflicts with the original world settings
4. **Stable maintenance**: Has a stable maintainer
5. **Clear authorization**: All contributors agree to work transfer

### From Adaptation Work to Independent World

When an adaptation work meets the following conditions, it can apply to become an independent world:

1. **Complete world**: Has a complete, independent setting system
2. **Mature narrative**: Has complete narrative structure and character system
3. **Community recognition**: Has wide influence in the community
4. **Maintenance team**: Has a stable maintenance and development team
5. **Clear authorization**: All contributors agree to world independence

### Promotion Process

1. **Application**: Work maintainer submits a promotion application
2. **Review**: Core team reviews work quality
3. **Migration**: Move the work from `adaptation-works` to the target location
4. **Renaming**: Rename files as needed to comply with naming rules of the new location
5. **Update**: Update all related links and navigation
6. **Announcement**: Announce promotion results to the community

## File Specifications

### 1. Required Files

#### Adaptation Work Directory Structure

```
complete-work-code/
├── README.md                     # Work introduction
├── metadata.yaml                 # Metadata
├── work-files                   # Story content (following naming conventions)
├── settings/
│   └── story-setting.md         # Work-specific settings
└── images/                      # Image resources directory
```

### 2. Metadata File (metadata.yaml)

```yaml
# Work metadata
work:
  code: "bs-a-c-001-a-new-gamer"  # Work code
  title:
    chinese: "新玩家"              # Chinese title
    english: "A New Gamer"        # English title
  format: "chaptered-story"       # chaptered-story / short-story
  subtype: "side"                 # main/side (only for chaptered stories)
  status: "updating"              # updating / completed
  location: "adaptation-works"    # Storage location (original-archives/adaptation-works)
  promotion_status: "eligible"    # Promotion status (eligible/under_review/promoted)

# Creation information
creation:
  author: "Author Name"          # Author name
  start_date: "2024-01-01"       # Start date
  last_update: "2024-01-01"      # Last update date
  based_on: "beastshield"        # Which world it's based on
```

### 3. README.md Template

```markdown
# [Work Title]

## Basic Information

- **Code**: `bs-a-c-001-a-new-gamer`
- **Status**: Updating
- **Location**: adaptation-works (adaptation work)
- **Type**: Chaptered Story - Side
- **Author**: Author Name
- **Start Date**: 2024-01-01

## Story Summary

Write the story summary here...

## Chapter List

- [Chapter 1: Infiltration](`bs-a-c-001-a-new-gamer-ch-001-infiltration.md`)
- [Chapter 2: Confrontation](`bs-a-c-001-a-new-gamer-ch-002-confrontation.md`)

## Setting Notes

This story uses the following special settings:

- [View Detailed Settings](`settings/story-setting.md`)
```

## Steps to Create a New Work

### Create Original Work (Core Team)

1. **Determine Work Information**
    - Select world (bs/bsr/uba)
    - Determine work nature (use "o" for original)
    - Select format (chaptered-story "c" / short-story "s")
    - Determine type (main/side, only for chaptered stories)
    - Determine number (check existing works, use next number)
    - Determine work name (English kebab-case)

2. **Create Files or Directories**
    - **Main chaptered**: Create files in `original-archives/language/chaptered-stories/main/`
    - **Side chaptered**: Create work directory in
      `original-archives/language/chaptered-stories/side/`, then create files inside
    - **Short story**: Create files in `original-archives/language/short-stories/`

3. **Use Correct Naming Format**
    - Main: `{world}-o-c-ch-{number}-{title}.md`
    - Side: `{world}-o-c-{number}-{work-name}-ch-{chapter-number}-{chapter-title}.md`
    - Short: `{world}-o-s-{number}-{work-name}.md`

### Create Adaptation Work (Community Contributors)

1. **Determine Work Information**
    - Select world (bs/bsr/uba)
    - Determine work nature (use "a" for adaptation)
    - Select format (chaptered-story "c" / short-story "s")
    - Determine number (check existing adaptation works, use next number)
    - Determine work name (English kebab-case)

2. **Create Work Directory**
    - In the corresponding world's `adaptation-works/format/` directory
    - Create a new folder named with the complete work code
    - Copy and modify template files

3. **Copy Template Files**
    - Copy corresponding template from `templates/adaption-work-template/`
    - Modify folder name and internal file content

4. **Modify File Content**
    - Update all information in `metadata.yaml`
    - Update content in `README.md`
    - Update story files using the unified naming format
    - Update settings in `settings/story-setting.md`
    - Add images to `images/` directory

## Examples

### Original Work Examples

**Main Chaptered Story**:

- File: `bs-o-c-ch-001-a-bloody-beginning.md`
- Location: `worlds/beastshield/original-archives/chinese/chaptered-stories/main/`
- Note: Main stories have no separate work directory

**Side Chaptered Story**:

- File: `bs-o-c-001-yan-liang-ch-001-infiltration.md`
- Location:
  `worlds/beastshield/original-archives/chinese/chaptered-stories/side/bs-o-c-001-yan-liang/`
- Note: Side stories have independent work directories

**Short Story**:

- File: `bs-o-s-001-farm-inn.md`
- Location: `worlds/beastshield/original-archives/chinese/short-stories/`

### Adaptation Work Examples

**Chaptered Story**:

- Work Code: `bs-a-c-001-a-new-gamer`
- File: `bs-a-c-001-a-new-gamer-ch-001-infiltration.md`
- Location: `worlds/beastshield/adaptation-works/chaptered-stories/bs-a-c-001-a-new-gamer/`

**Short Story**:

- Work Code: `bs-a-s-001-first-blood`
- File: `bs-a-s-001-first-blood.md`
- Location: `worlds/beastshield/adaptation-works/short-stories/bs-a-s-001-first-blood/`

## Naming Checklist

When creating files, please check:

- [ ] World code correct (bs/bsr/uba)
- [ ] Work nature correct (o/a/c)
- [ ] Work format correct (c/s)
- [ ] Number correct (three digits)
- [ ] Work identifier correct (English kebab-case)
- [ ] Chapter number correct (three digits, only for chaptered stories)
- [ ] **Chapter title/work title included** (mandatory)
- [ ] Hyphen usage correct (especially `-ch-`)
- [ ] Filename all lowercase
- [ ] File extension is `.md`

## Important Notes

1. **Naming Consistency**: Adaptation work file names maintain complete consistency with original
   works
2. **Title Mandatory**: All chaptered stories must include chapter title short form
3. **Code Uniqueness**: Ensure work codes are unique and not duplicated
4. **Number Continuity**: Numbers should increment sequentially within the same format
5. **File Naming**: Use lowercase letters and hyphens, avoid special characters
6. **Image Referencing**: Correctly reference image paths in story files
7. **Status Updates**: Change status to `completed` in `metadata.yaml` when work is finished
8. **Promotion Applications**: Works meeting promotion criteria can submit promotion applications at
   any time

## Template Location

The project provides standard templates at:

- Chaptered story template: `templates/adaption-work-template/chaptered-story/`
- Short story template: `templates/adaption-work-template/short-story/`

Use these templates as starting points to ensure consistent structure across all works.

---

## Frequently Asked Questions

### Q: Why do main stories have no separate work directory?

A: Main stories are the core narrative line of the world, usually consisting of one continuous
story. Placing chapters directly in the main directory provides clearer organization.

### Q: Why do side stories need work directories?

A: Side stories are independent narrative units, and there may be multiple different side stories.
Creating independent directories for each side story facilitates management and maintenance.

### Q: What are the requirements for chapter title short forms?

A: Chapter title short forms should:

1. Use lowercase English
2. Connect words with hyphens
3. Be concise and reflect chapter core content
4. Avoid special characters and spaces
5. Examples: `a-bloody-beginning`, `infiltration`, `final-battle`

### Q: If my adaptation work becomes very popular, can it become an official work?

A: Yes. When a work is completed and reaches certain quality standards, it can apply for migration
to `original-archives`. Files will be renamed as needed during migration.

### Q: Can adaptation works become independent worlds?

A: Yes. If an adaptation work has a complete and independent setting system, mature narrative
structure, and community influence, it can apply to become an independent world. This requires
review by the core team.

### Q: How to find specific types of works?

A: Quickly identify by filename:

- World: First 2-3 characters
- Nature: 4th character (o/a/c)
- Format: 6th character (c/s)
- Main/Side: Check if work number and work name are present

---

## Update History

- **2025-12-13 v2.1.1**: Clarified promotion paths and positioning of adaptation works
    - Added Core Concept Definitions section
    - Clarified two promotion paths for adaptation works: promotion to official original work or
      independent world
    - Added promotion status field to metadata
    - Updated FAQ with adaptation work promotion-related questions

- **2025-12-13 v2.1.0**: Updated based on latest project structure, unified naming formats for all
  work types
    - **Major Changes**:
        1. **Chapter Title Mandatory**: All chaptered stories must include chapter title short form
        2. **Clear Main/Side Distinction**:
            - Main: `{world}-o-c-ch-{number}-{title}.md`
            - Side: `{world}-o-c-{number}-{work-name}-ch-{chapter-number}-{chapter-title}.md`
        3. **Updated All Examples**: Ensure examples match actual structure
        4. **Added Naming Checklist**: Help creators check naming correctness
        5. **Enhanced FAQ**: Explain main/side directory structure differences

---

*Last Updated: December 13, 2025*  
*Document Version: 2.1.1*