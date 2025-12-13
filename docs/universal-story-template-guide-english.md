# Universal Story Template User Guide 4.3 (New Naming System Fully Adapted)

## Introduction

This guide provides detailed instructions on how to use the new naming system adapted Universal
Story Template. The template fully adheres to the Beastkin Universe standardized naming
system (version 2.1.1) and is optimized for the workflow of **community creators**. We strongly
advise new authors to start with **adaptation works**, as it is the smoothest path to integrate into
the community and understand the worldbuilding. Please follow the steps and specifications in this
guide according to your creative needs.

---

## Core Concepts & Recommended Path

Before you start, it is crucial to understand the project structure and the recommended path:

1. **Start with Adaptations (Recommended Path)**: `adaptation-works` is the playground for community
   creations. **We recommend all new authors begin here**, creating works based on existing worlds.
   It's lower risk, easier to start, and allows for direct community feedback.
2. **Understand Original Works**: `original-archives` stores official works maintained by the *
   *world's original author** or the core team. It is the foundation and inspiration for all
   derivative creations.
3. **Clear Promotion Mechanism**: Excellent, completed adaptation works that gain community
   recognition and original author approval can be **promoted** to `original-archives`, or even
   develop into independent world modules.
4. **Flexible Structure**: Main storyline files are placed directly in the `main/` directory, but
   the use of subdirectories (e.g., `volume-1/`) is supported to manage multi-volume works. This is
   considered an internal organizational method.

---

## Quick Start: Beginning with Adaptation Works (Recommended)

For most creators, especially those new to the community, we recommend following this path:

![guide-quick-start-path-v43-en.png](guide-images/guide-quick-start-path-v43-en.png)

```mermaid
flowchart TD
    A[Start Creating] --> B{Choose Work Nature};
    B -- Recommended for Beginners --> C[Adaptation Work<br>adaptation-works];
    B -- For Official/Core Team --> D[Original/Crossover Work<br>original-archives];
    
    C --> E[Use Corresponding Language Template<br>(Chinese/English)];
    E --> F[Fill Configuration<br>(Nature must be 'a')];
    F --> G[Create & Publish per Guidelines];
    G --> H{Is Work Completed & Excellent?};
    H -- Yes --> I[Apply for Promotion to Canon];
    H -- No --> J[Continue Receiving Feedback & Growing];
    
    D --> K[Determine Type<br>(Main/Side/Short)];
    K --> L[Configure Strictly per Guide];
    L --> M[Enter Official Publishing Process];
```

**Step 1: Select Template**
Copy the appropriate template from the `/templates/` directory based on the language of creation:

- For Chinese creation: `universal-story-template-chinese.md`
- For English creation: `universal-story-template-english.md`

**Step 2: Determine Basic Work Information**

- **Work Nature**: Choose **`a` (adaptation)**. This is the standard starting point for community
  creation.
- **Work Format**: Choose `c` (chaptered story) or `s` (short story) based on your story's
  structure.
- **Select World**: Choose which world you want to base your work on (`bs`, `bsr`, `uba`).

**Step 3: Fill in the Template Configuration**
Accurately fill in the information in the template's "Configuration Area". **Please pay special
attention to**:

- `Work Nature`: Enter **`a`**
- `Work Identifier`: Use English kebab-case (e.g., `my-adaptation-story`)
- `Chapter Title` (for chaptered stories): **Must fill in** the English title short form.

**Step 4: Select Navigation Bar**
Based on whether you are creating a short story or a chaptered story (and its position), select the
corresponding "Adaptation" navigation bar from the eight configurations provided in the template.

**Step 5: Create and Publish**

1. Under the `worlds/{world}/adaptation-works/{format}/` directory, **create a new folder named with
   your "Complete Work Code"**.
2. Place the configured template file into this folder and rename it to the correct filename.
3. Start writing your story!

**Future Path**: Once your adaptation work is complete and receives positive feedback, you can refer
to the **"Work Promotion Mechanism"** at the end of this guide to apply for its inclusion into the
official canon.

---

## New Naming System Details (Version 2.1.1)

### Work Code Format

```
[world]-[nature]-[format]-[number]-[work-name]
```

**For adaptation works, the nature field is fixed as `a`.**

Examples:

- **Adaptation chaptered side story**: `bs-a-c-001-a-new-gamer` (This is a typical code for
  community works)
- Original short story: `bs-o-s-001-farm-inn`
- Original main storyline chaptered: `bs-o-c` (Used by core team only)

### File Naming Conventions

#### **1. Adaptation Work File Name Format (Primarily used for community creation)**

**Chaptered Stories**

- **Format**: `{complete-work-code}-ch-{chapter-number}-{chapter-title-short}.md`
- **Example**: `bs-a-c-001-a-new-gamer-ch-001-infiltration.md`
- **Location**: `worlds/bs/adaptation-works/chaptered-stories/bs-a-c-001-a-new-gamer/`

**Short Stories**

- **Format**: `{complete-work-code}.md`
- **Example**: `bs-a-s-001-first-blood.md`
- **Location**: `worlds/bs/adaptation-works/short-stories/bs-a-s-001-first-blood/`

#### **2. Original Work File Name Format (For reference)**

**Main Storyline (main)**

- **Format**: `{world-code}-o-c-ch-{chapter-number}-{chapter-title-short}.md`
- **Example**: `bs-o-c-ch-001-a-bloody-beginning.md`

**Side Storyline (side)**

- **Format**:
  `{world-code}-o-c-{side-number}-{work-name}-ch-{chapter-number}-{chapter-title-short}.md`
- **Example**: `bs-o-c-001-yan-liang-ch-001-infiltration.md`

**Short Stories**

- **Format**: `{world-code}-o-s-{work-number}-{work-name}.md`
- **Example**: `bs-o-s-001-farm-inn.md`

### Field Descriptions

| Field         | Possible Values                                                                               | Meaning & Suggestion                                                 |
|:--------------|:----------------------------------------------------------------------------------------------|:---------------------------------------------------------------------|
| **World**     | `bs`, `bsr`, `uba`                                                                            | The world the work is based on.                                      |
| **Nature**    | `a` (adaptation) - **Adaptation**<br>`o` (original) - Original<br>`c` (crossover) - Crossover | **Community creators please use `a`**.                               |
| **Format**    | `c` (chaptered-story) - Chaptered story<br>`s` (short-story) - Short story                    | Choose based on story length and structure.                          |
| **Number**    | Three-digit number, e.g., `001`                                                               | The serial number within similar works of the same world and format. |
| **Work Name** | English kebab-case, e.g., `my-adaptation`                                                     | The English identifier for the work. Please use hyphens.             |

---

## Directory Structure Specifications

### Adaptation Works (`a`) - **Your work will be here**

```
worlds/{world}/adaptation-works/{format}/{complete-work-code}/
```

- **Format**: `chaptered-stories` (chaptered) or `short-stories` (short)
- **Complete Work Code**: e.g., `bs-a-c-001-a-new-gamer`

**This is your working directory!** Examples:

- Chaptered adaptation: `worlds/bs/adaptation-works/chaptered-stories/bs-a-c-001-a-new-gamer/`
- Short adaptation: `worlds/bs/adaptation-works/short-stories/bs-a-s-001-first-blood/`

### Original Works (`o`) - **Your potential future promotion target**

```
worlds/{world}/original-archives/{language}/{format}/{subtype}/
```

- **Language**: `chinese` or `english`
- **Format**: `chaptered-stories` or `short-stories`
- **Subtype** (chaptered only): `main` (main storyline) or `side` (side storyline)

---

## Configuration Details

### Core Configuration Items (Example for Adaptation Works)

1. **World Code**: `bs`, `bsr`, `uba` (choose one)
2. **Work Nature**: **`a`** (adaptation)
3. **Work Format**: `c` or `s`
4. **Work Number**: Three-digit number, e.g., `001` (check directory to avoid duplicates)
5. **Work Identifier**: English kebab-case, e.g., `my-adaptation`
6. **Work Title**: Complete Chinese and English titles
7. **Chapter Title** (chaptered mandatory): Chinese and English chapter title short form

### Path Configuration

- **Adaptation Works**: No language selection needed. Simply create a directory named with the
  complete work code under `adaptation-works`.

---

## Navigation Bar Configuration Selection

Based on work format and chapter position, choose one of the eight configurations provided in the
template. **For adaptation works, please select configurations with "Adaptation" in the name**:

1. Short Original Navigation (for original works)
2. **Short Adaptation Navigation** (for your short adaptation)
3. Chaptered Original - First Chapter (for original works)
4. Chaptered Original - Middle Chapters (for original works)
5. Chaptered Original - Final Chapter (for original works)
6. **Chaptered Adaptation - First Chapter** (for your chaptered adaptation)
7. **Chaptered Adaptation - Middle Chapters** (for your chaptered adaptation)
8. **Chaptered Adaptation - Final Chapter** (for your chaptered adaptation)

---

## Text Formatting Specifications

1. **Paragraph Spacing**: Maintain one blank line between lines and between paragraphs.
2. **Bold for Settings**: Elements like characters, locations, organizations, and proper nouns must
   be bolded using `**bold**`. Dialogue itself should not be bolded.
3. **World Feature**: All characters are Male Beastmen with hermaphroditic features, which can be
   naturally mentioned in commentary.

---

## Story Commentary and Reflection Writing Guide

This section is used to comment on characters and events in a感性, conversational tone, and is a
distinctive feature of the works.

### Writing Structure

1. **Their Final Stories**: Comment on all deceased characters in this chapter. Mark their identity
   and uniform color with【】.
2. **The People Still Alive**: Comment on all surviving characters in this chapter.
3. **Story Reflection**: Share your overall feelings about this chapter in the first person.

### Uniform Color Differentiation Rules (Adaptation works should follow original settings)

1. If text explicitly mentions uniform color, write according to description.
2. If not explicitly mentioned but department is mentioned: Combat Group - black uniform, Firearms
   Group - white uniform, Management - blue uniform, no department mentioned - green uniform.
3. Common soldiers/guards usually refer to green uniform.

---

## Work Promotion Mechanism

This is your bridge from `adaptation-works` to `original-archives`.

**Promotion Conditions**:

- The work is **completed**.
- **High quality**, widely recognized by the community.
- **Settings** have **no conflict** with the original world.
- **Clear authorization**, all contributors agree.

**Promotion Process**:

1. **Application**: Submit a promotion application to the project core team.
2. **Review**: The team reviews work quality and setting consistency.
3. **Migration & Renaming**: Move the work directory from `adaptation-works` to the appropriate
   location in `original-archives`, and rename files according to original work standards.
4. **Update & Announcement**: Update all links and announce to the community.

---

## Troubleshooting

- **Navigation Links Not Working**: Check if the correct navigation bar configuration is selected (
  e.g., using an original navigation for an adaptation work).
- **Images Not Displaying**: Confirm the image path is correct and the image file exists in the
  `images/` folder within your work directory.
- **Incorrect Filenames**: Ensure following correct naming rules, especially that **chapter title
  short form must be filled in**.

---

## Update History

- **2025-12-13 v4.3**: Restructured guide logic, clarified recommended path.
    - Completely restructured the "Quick Start" section, positioning **creating adaptation works**
      as the **primary recommended path** for new community members, accompanied by a decision
      flowchart.
    - Explicitly stated the "Start with Adaptations" recommendation in "Core Concepts".
    - In sections like file naming and directory structure, content related to "Adaptation Works" is
      placed first and highlighted.
    - Added the "Work Promotion Mechanism" chapter, outlining the future development path for
      adaptation works.
    - Optimized overall wording to better fit the actual usage scenario of community creators.

- **2025-12-13 v4.2**: Synchronized core concepts, optimized guide wording.
    - Added "Core Concepts Review" chapter.
    - Clarified that main stories can use subdirectories under `main/` for internal organization.

- **2025-12-13 v4.1**: Adapted to new naming system version 2.1.0.
    - Updated naming rules, chapter titles made mandatory.

- **2025-12-13 v4.0**: Initial adaptation to new naming system.

---

*Last updated: 2025-12-13*  
*Document Version: 4.3*  
*Adapted Naming System: 2.1.1*