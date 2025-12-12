# Universal Story Template

[//]: # (=== Template Usage Instructions ===)

[//]: # (This template is suitable for all types of stories, including short stories, medium-length stories, and long serialized stories.)

[//]: # (Please configure the following variables according to your story type.)

---

## Configuration Area

[//]: # (--- Story Type Selection ---)

[//]: # (Please select your story type and fill in the corresponding configuration below.)

[//]: # (Remove the backtick ` in front of the selected configuration item and delete other unselected configuration items.)

[//]: # (### Configuration A: Short Story (single story))
[//]: # (Short stories are independent single-file stories, no chapters needed.)
[//]: # (Remove the backtick ` in the configuration block below and fill in your information:)
[//]: # ()
[//]: # (`Story Type: Short`)
[//]: # (`Story Prefix: ss-`)
[//]: # (`Story Number: {{three-digit number, e.g., 001}}`)
[//]: # (`Chinese Title: {{Chinese title, e.g., "炎魉 - 潜入基地"}}`)
[//]: # (`English Title: {{English title, e.g., "Flame Wraith - Infiltration"}}`)
[//]: # (`Filename Format: {{story prefix}}{{story number}}-{{English title abbreviation}}.md`)
[//]: # (`Example Filename: ss-001-flame-wraith-ch1.md`)
[//]: # ()
[//]: # (### Configuration B: Chaptered Story (chaptered story))
[//]: # (Chaptered stories contain multiple chapters, such as medium-length stories and long serialized stories.)
[//]: # (Remove the backtick ` in the configuration block below and fill in your information:)
[//]: # ()
[//]: # (`Story Type: Chaptered`)
[//]: # (`Story Prefix: ms-`)
[//]: # (`Story Number: {{three-digit number, e.g., 001}}`)
[//]: # (`Chapter Number: {{chapter number, two or three digits, e.g., 01, 001}}`)
[//]: # (`Chapter Title: {{this chapter's title, e.g., "潜入基地"}}`)
[//]: # (`Chapter English Title: {{chapter English title, e.g., "Infiltration"}}`)
[//]: # (`Total Chapters: {{total number of chapters, e.g., 3 or 15, optional}}`)
[//]: # (
`Filename Format: {{story prefix}}{{story number}}-{{chapter number}}-{{chapter English title abbreviation}}.md`)
[//]: # (`Example Filename: ms-001-01-infiltration.md`)
[//]: # ()
[//]: # (### Configuration C: Main Story (main story))
[//]: # (Main stories are usually the core stories of the project, with longer length.)
[//]: # (Remove the backtick ` in the configuration block below and fill in your information:)
[//]: # ()
[//]: # (`Story Type: Main`)
[//]: # (`Story Prefix: ms-main-`)
[//]: # (`Story Number: {{three-digit number, e.g., 001}}`)
[//]: # (`Chapter Number: {{chapter number, two or three digits, e.g., 01, 001}}`)
[//]: # (`Chapter Title: {{this chapter's title, e.g., "白之都的阴影"}}`)
[//]: # (`Chapter English Title: {{chapter English title, e.g., "Shadows of White City"}}`)
[//]: # (`Total Chapters: {{total number of chapters, e.g., 30, optional}}`)
[//]: # (`Filename Format: {{story prefix}}{{story number}}-ch{{chapter number}}-{{chapter English title
abbreviation}}.md`)
[//]: # (`Example Filename: ms-main-001-ch01-shadows.md`)

---

## File Generation Instructions

[//]: # (--- Auto-Generated Area ---)

[//]: # (The following sections will be automatically generated based on the above configuration. Do not modify manually.)

[//]: # (If creating manually, please fill in the content below according to the configuration.)

[//]: # (### File title generated based on configuration)

[//]: # (Short: {{story prefix}}{{story number}}: {{Chinese title}})

[//]: # (Chaptered: {{story prefix}}{{story number}}-{{chapter number}}: {{chapter title}})

[//]: # (Main: Chapter {{chapter number}} {{chapter title}})

# {{Title generated based on configuration}}

---

[//]: # (=== Navigation Bar Configuration Area ===)

[//]: # (Please select a navigation bar configuration based on the story type and chapter position:)

[//]: # (Remove the backtick ` in front of the selected configuration and delete other unselected configurations.)

[//]: # (--- Configuration 1: Short Story Navigation ---)
[//]: # (`[Return to Directory](README.md) | [Return to Project Home](../../../../../README.md)`)

[//]: # (--- Configuration 2: Chaptered Story - Chapter 1 ---)
[//]: # (
`[Return to Directory](content.md) | [Next Chapter]({{next chapter filename}}) | [Return to Project Home](../../../../../README.md)`)

[//]: # (--- Configuration 3: Chaptered Story - Middle Chapters ---)
[//]: # (
`[Previous Chapter]({{previous chapter filename}}) | [Return to Directory](content.md) | [Next Chapter]({{next chapter filename}}) | [Return to Project Home](../../../../../README.md)`)

[//]: # (--- Configuration 4: Chaptered Story - Final Chapter ---)
[//]: # (
`[Previous Chapter]({{previous chapter filename}}) | [Return to Directory](content.md) | [Return to Project Home](../../../../../README.md)`)

[//]: # (--- Configuration 5: Main Story - Chapter 1 ---)
[//]: # (
`[Return to Directory](content.md) | [Next Chapter]({{next chapter filename}}) | [Return to Project Home](../../../../../README.md)`)

[//]: # (--- Configuration 6: Main Story - Middle Chapters ---)
[//]: # (
`[Previous Chapter]({{previous chapter filename}}) | [Return to Directory](content.md) | [Next Chapter]({{next chapter filename}}) | [Return to Project Home](../../../../../README.md)`)

[//]: # (--- Configuration 7: Main Story - Final Chapter ---)
[//]: # (
`[Previous Chapter]({{previous chapter filename}}) | [Return to Directory](content.md) | [Return to Project Home](../../../../../README.md)`)

{{Navigation Bar Content}}

---

> *{{English title generated based on configuration}}*  
> {{Story summary/Chapter summary}}

---

[//]: # (--- Text Formatting Specifications ---)

[//]: # (Keep one blank line between lines in the text, and one blank line between paragraphs.)

[//]: # (All parts related to settings should be bolded, including but not limited to:)

[//]: # (1. Appearing characters, names such as: **Yan**, **Liang**, X-beasts also count, any character should be bolded.)

[//]: # (2. Proper nouns, such as: **Beast Shield Company**, **Mighty Radish**.)

[//]: # (3. Locations, such as: **Beast Shield New Recruit Training Base**, **White City**.)

[//]: # (4. Equipment/Props, such as: **Suppressor**, **Silver Needle**, **Walkie-Talkie**.)

[//]: # (5. Organizations/Factions, such as: **Special Agent Bureau**, **Beast Shield Company**, **Combat Group**.)

[//]: # (6. Plot/Character/Worldview settings, such as: **Blazing Flow Hidden Force**, **Silver Needle Sealing Technique**.)

[//]: # (Character dialogue in conversations should not be bolded, unless it is a setting part.)

[//]: # (Keep the original quotation format of the dialogue, do not change.)

[//]: # (Example: **Yan** choked the **Bear Guard**'s throat and grasped his **bear dick**.)

{{Text Content Paragraph 1}}

{{Text Content Paragraph 2}}

[//]: # (--- Image Insertion Example ---)

[//]: # (If there are illustrations, you can insert them here.)
[//]: # (Image reference format: `![Image Description](relative path/image filename)`)
[//]: # (Short Story Example: `![Yan Executing Tiger Guard](../../images/short-stories/ss-001-1-execution.png)`)
[//]: # (Chaptered Story Example:
`![Panda Demonstrating Skills](../../images/middle-stories/ms-001-03-panda-showcase.png)`)
[//]: # (Main Story Example: `![Qin Feng Drawing Pistol](../../images/main-story/ch01-QinFengDrawsPistol.png)`)

{{Text Content Paragraph 3}}

[//]: # (--- End of Text ---)

---

[//]: # (=== Chapter End Mark ===)

[//]: # (Select an end mark based on the story type and chapter position.)

[//]: # (--- Short Story End ---)

[//]: # (**End**)

[//]: # (--- Chaptered Story End ---)

[//]: # (**End of Chapter {{chapter number}}**)

[//]: # (--- Main Story End ---)

[//]: # (**End of Chapter {{chapter number}}**)

{{Chapter End Mark}}

> *{{Chapter ending words/Story ending words}}*

---

[//]: # (=== Bottom Navigation Bar ===)

[//]: # (Consistent with the top navigation bar.)

{{Same as top navigation bar}}

---

[//]: # (=== Default Value Instructions ===)

[//]: # (If the user does not provide configuration, use the following default values:)

[//]: # (Story Type: Short)

[//]: # (Story Prefix: ss-)

[//]: # (Story Number: 001)

[//]: # (Chapter Number: 01)

[//]: # (Chinese Title: Untitled Story)

[//]: # (English Title: Untitled Story)

[//]: # (Filename Format: Use the corresponding default format based on the story type.)

[//]: # (Navigation Bar Configuration: Short Story Navigation)

[//]: # (Chapter End Mark: Use the corresponding default mark based on the story type.)