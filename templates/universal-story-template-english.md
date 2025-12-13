# Universal Story Template (New Naming System Fully Adapted)

[//]: # (=== Template Usage Instructions ===)

[//]: # (This template is fully adapted to the Beastkin Shield Universe new naming system, suitable for all work types.)

[//]: # (Work code format: [world]-[nature]-[format]-[number]-[work-name])

[//]: # (Nature: o=original, a=adaptation, c=crossover)

[//]: # (Format: c=chaptered-story, s=short-story)

[//]: # (Please complete the following variables according to your work type.)

---

## Configuration Area

[//]: # (--- Core Code Configuration ---)

[//]: # (This is the core identifier of the work, must be accurately filled)

`World Code: {{bs/bsr/uba}}`
`Work Nature: {{o=original/a=adaptation/c=crossover}}`
`Work Format: {{c=chaptered-story/s=short-story}}`
`Work Number: {{three-digit number, e.g., 001}}`
`Work Identifier: {{English kebab-case, e.g., flame-wraith}}`

[//]: # (--- Complete Work Code Generation ---)

[//]: # (Automatically generate complete code based on above configuration)

`Complete Work Code: {{World Code}}-{{Work Nature}}-{{Work Format}}-{{Work Number}}-{{Work Identifier}}`

[//]: # (--- Work Title Configuration ---)

[//]: # (Please fill in the Chinese and English full name of the work)

`Chinese Title: {{Chinese title, e.g., "炎魉"}}`
`English Title: {{English title, e.g., "Flame Wraith"}}`

[//]: # (--- Chaptered Story Subtype Configuration ---)
[//]: # (If it's a chaptered story (format=c), please select subtype:)

`Chaptered Story Subtype: {{main=main storyline/side=side storyline}}`

[//]: # (--- Chapter Configuration ---)

[//]: # (If it's a chaptered story, please fill in the following:)

`Chapter Number: {{chapter number, three digits, e.g., 001}}`
`Chapter Chinese Title: {{chapter title, e.g., "潜入基地"}}`
`Chapter English Title: {{chapter English title, e.g., "Infiltration"}}`
`Total Chapters: {{total number of chapters, e.g., 15, optional}}`

[//]: # (--- Path Configuration ---)

[//]: # (Select correct path template based on work nature)

[//]: # (Configuration 1: Original Work Path Template)

[//]: # (Original path: worlds/{world}/original-archives/{language}/{format}/{subtype}/)
`Language: {{chinese/english}}`

[//]: # (Configuration 2: Adaptation Work Path Template)

[//]: # (Adaptation path: worlds/{world}/adaptation-works/{format}/{complete-work-code}/)

[//]: # (--- Navigation Bar Configuration ---)

[//]: # (Select one navigation bar configuration based on work nature and chapter position:)

[//]: # (Configuration 1: Short Original Navigation)
`[Back to Directory](../README.md) | [Back to World Home](../../../../README.md) | [Back to Project Home](../../../../../../../README.md)`

[//]: # (Configuration 2: Short Adaptation Navigation)
`[Back to Work Directory](../README.md) | [Back to World Home](../../../../README.md) | [Back to Project Home](../../../../../../../README.md)`

[//]: # (Configuration 3: Chaptered Original - Chapter 1)
`[Back to Directory](../README.md) | [Next Chapter]({{World Code}}-{{Work Nature}}-{{Work Format}}-{{Work Number}}-{{Work Identifier}}-ch{{next-chapter-number}}.md) | [Back to World Home](../../../../README.md) | [Back to Project Home](../../../../../../../README.md)`

[//]: # (Configuration 4: Chaptered Original - Middle Chapters)
`[Previous Chapter]({{World Code}}-{{Work Nature}}-{{Work Format}}-{{Work Number}}-{{Work Identifier}}-ch{{previous-chapter-number}}.md) | [Back to Directory](../README.md) | [Next Chapter]({{World Code}}-{{Work Nature}}-{{Work Format}}-{{Work Number}}-{{Work Identifier}}-ch{{next-chapter-number}}.md) | [Back to World Home](../../../../README.md) | [Back to Project Home](../../../../../../../README.md)`

[//]: # (Configuration 5: Chaptered Original - Final Chapter)
`[Previous Chapter]({{World Code}}-{{Work Nature}}-{{Work Format}}-{{Work Number}}-{{Work Identifier}}-ch{{previous-chapter-number}}.md) | [Back to Directory](../README.md) | [Back to World Home](../../../../README.md) | [Back to Project Home](../../../../../../../README.md)`

[//]: # (Configuration 6: Chaptered Adaptation - Chapter 1)
`[Back to Work Directory](../README.md) | [Next Chapter](ch{{next-chapter-number}}-{{next-chapter-title-short}}.md) | [Back to World Home](../../../../README.md) | [Back to Project Home](../../../../../../../README.md)`

[//]: # (Configuration 7: Chaptered Adaptation - Middle Chapters)
`[Previous Chapter](ch{{previous-chapter-number}}-{{previous-chapter-title-short}}.md) | [Back to Work Directory](../README.md) | [Next Chapter](ch{{next-chapter-number}}-{{next-chapter-title-short}}.md) | [Back to World Home](../../../../README.md) | [Back to Project Home](../../../../../../../README.md)`

[//]: # (Configuration 8: Chaptered Adaptation - Final Chapter)
`[Previous Chapter](ch{{previous-chapter-number}}-{{previous-chapter-title-short}}.md) | [Back to Work Directory](../README.md) | [Back to World Home](../../../../README.md) | [Back to Project Home](../../../../../../../README.md)`

---

## File Generation Instructions

[//]: # (--- Auto-generated Area ---)

[//]: # (The following sections will be automatically generated based on above configuration, do not manually modify)

[//]: # (If manually creating, please fill in content below according to configuration)

[//]: # (### File title generated based on configuration)

[//]: # (Short story: {{World Code}}-{{Work Nature}}-{{Work Format}}-{{Work Number}}-{{Work Identifier}}: {{Chinese Title}})

[//]: # (Chaptered story: Chapter {{Chapter Number}} {{Chapter Chinese Title}} - {{Chinese Title}})

# {{Title generated based on configuration}}

---

{{Navigation Bar Content}}

---

> *{{English Title}}{{#if chaptered story}} - Chapter {{Chapter Number}} {{Chapter English
Title}}{{/if}}*  
> {{Story Summary/Chapter Summary}}

---

[//]: # (--- Text Formatting Specifications ---)

[//]: # (Keep one blank line between lines in text, and one blank line between paragraphs)

[//]: # (Special note: if original text has blank lines, ensure Markdown conversion still maintains paragraph separation effect)

[//]: # (All parts related to settings should be bolded, including but not limited to:)

[//]: # (1. Appearing characters, names such as: **Yan**, **Liang**, X-beasts also count, any character should be bolded)

[//]: # (2. Proper nouns, such as: **Beast Shield Company**, **Mighty Radish**)

[//]: # (3. Locations, such as: **Beast Shield New Recruit Training Base**, **White City**)

[//]: # (4. Equipment/Props, such as: **Suppressor**, **Silver Needle**, **Walkie-Talkie**)

[//]: # (5. Organizations/Factions, such as: **Special Agent Bureau**, **Beast Shield Company**, **Combat Group**)

[//]: # (6. Plot/Character/Worldview settings, such as: **Blazing Flow Hidden Force**, **Silver Needle Sealing Technique**, **All Male Beastmen**)

[//]: # (Character dialogue in conversations should not be bolded, unless it's a setting part)

[//]: # (Keep the original quotation format of dialogue, do not change)

[//]: # (Example: **Yan** choked the **Bear Guard**'s throat and grasped his **bear dick**.)

{{Text Content Paragraph 1}}

{{Text Content Paragraph 2}}

[//]: # (--- Image Insertion Example ---)

[//]: # (If there are illustrations, you can insert them here)
[//]: # (Image reference format: `![Image Description](relative path/image filename)`)

[//]: # (Original short story example:)
[//]: # (
`![Yan Executing Tiger Guard](../../images/short-stories/{{World Code}}_{{Work Nature}}{{Work Format}}{{Work Number}}_1_execution.png)`)

[//]: # (Original chaptered story example:)
[//]: # (
`![Panda Demonstrating Skills](../../images/chaptered-story/{{Chaptered Story Subtype}}/{{World Code}}_{{Work Nature}}{{Work Format}}{{Work Number}}_ch{{Chapter Number}}_1_panda_showcase.png)`)

[//]: # (Adaptation short story example:)
[//]: # (
`![Yan Executing Tiger Guard](../images/{{World Code}}_{{Work Nature}}{{Work Format}}{{Work Number}}_1_execution.png)`)

[//]: # (Adaptation chaptered story example:)
[//]: # (
`![Panda Demonstrating Skills](../images/{{World Code}}_ch{{Chapter Number}}_1_panda_showcase.png)`)

{{Text Content Paragraph 3}}

[//]: # (--- End of Text ---)

---

[//]: # (=== Chapter End Mark ===)

[//]: # (Select an end mark based on story type)

[//]: # (--- Short Story End ---)

[//]: # (**End**)

[//]: # (--- Chaptered Story End ---)

[//]: # (**End of Chapter {{Chapter Number}}**)

{{Chapter End Mark}}

> *{{Chapter Ending Words/Story Ending Words}}*

[//]: # (=== Chapter Ending Words/Story Ending Words Writing Guide ===)

[//]: # (**Position and Function:**)

[//]: # (- **Summarization and Elevation**: After story concludes, use concise, evocative sentence to summarize and elevate story's theme, emotion, or fate.)

[//]: # (- **Leave Room for Imagination**: Provide space for reader to reflect, prompting thoughts about story's deeper meaning, character destinies, or world-building.)

[//]: # (- **Continuity and Implication**: In serialized stories, can hint at future developments or connections to other stories, enhancing overall narrative coherence.)

[//]: # (- **Style Consistency**: Maintain language style consistent with story's tone to reinforce overall atmosphere and emotional impact.)

[//]: # (**Writing Suggestions:**)

[//]: # (- **Concise and Powerful**: Usually one to two sentences, avoid being verbose.)

[//]: # (- **Focus on Ambiance**: Emphasize emotion, imagery, or philosophical reflection rather than plot summary.)

[//]: # (- **Bilingual Coordination**: Chinese and English versions should align in meaning and emotional tone. English version can be adjusted appropriately to suit linguistic conventions.)

[//]: # (- **Avoid Spoilers**: Do not reveal subsequent plot points or definitive outcomes; maintain openness.)

[//]: # (**Format Examples:**)

[//]: # (1. **Philosophical Type**: *The delivery of desire signed for a life, but will the seed of pity sprout in the darkness?*)

[//]: # (2. **Open-ended Type**: *The hunt in the darkness continues. Whose cry will be next?*)

[//]: # (3. **Summarizing Type**: *The gears of fate begin to turn, and an ordinary office worker steps into a dark cycle.*)

[//]: # (4. **Atmospheric Type**: *The midnight hunt is silent, but the bounty hunter's footsteps never cease.*)

---

{{Same as top navigation bar}}

---

## Story Commentary and Reflection

[//]: # (=== Commentary Writing Guide ===)

[//]: # (Please write commentary for all characters in this chapter in warm, casual language, and organize according to following structure.)

[//]: # (Note: All characters are hermaphroditic male beastmen, dual features can be naturally mentioned in commentary.)

[//]: # (Commentary content: keep one blank line between lines, and one blank line between paragraphs.)

[//]: # (If original commentary has multiple natural paragraphs, use divider `---` for separation.)

[//]: # (### Uniform Color Differentiation Rules)

[//]: # (1. If text explicitly mentions uniform color, write according to description.)

[//]: # (2. If not explicitly mentioned but department is mentioned: Combat Group - black uniform, Firearms Group - white uniform, Management - blue uniform, no department mentioned - green uniform.)

[//]: # (3. Common soldiers/guards usually refer to green uniform.)

> *The following commentary is based on this chapter's story content, written in casual emotional
language.*

### Their Final Stories

[//]: # (Write in order of appearance or memory, each character marked with 【】, including uniform color and identity information.)

[//]: # (Example:)

[//]: # (【Green Uniform Tiger Guard】)

[//]: # (That new recruit patrolling the corner, chest muscles bulging under tight clothes, probably bragged to his buddies this morning about how long-lasting he was.)

[//]: # ()

[//]: # (Dragged into the shadows by Yan, didn't even see the attacker's face, his cock got hard, suffocated with semen trapped in military green pants.)

[//]: # ()

[//]: # (Poor guy, died without even knowing his killer's name, those tiger breasts never got touched before death.)

[//]: # ()

[//]: # (---)

[//]: # (【Black Uniform Combat Group Bear Warrior】)

[//]: # (This one was probably an elite from the Combat Group, black uniform crisp, muscles straining against the fabric.)

[//]: # ()

[//]: # (Unfortunately met Yan, didn't even get through one move, was pressed against the wall, bear dick crushed.)

[//]: # ()

[//]: # (Died still in charging posture, just lower body a mess.)

{{Character Commentary Content}}

### The People Still Alive

[//]: # (Commentary on surviving characters. If no surviving characters, this section can be omitted.)

[//]: # (Example:)

[//]: # (【Yan】)

[//]: # (This cold-faced killer has held countless male beastmen's cocks and breasts.)

[//]: # ()

[//]: # (He knows bulls' sensitive spots are nipples, knows how to pinch to make a bull ejaculate on the spot.)

[//]: # ()

[//]: # (A craftsman in the apocalyptic world, making a living with this "craft," intimately familiar with male beastmen's bodies.)

[//]: # ()

[//]: # (---)

[//]: # (【Liang】)

[//]: # (Yan's partner, always hiding in the shadows, like a phantom.)

[//]: # ()

[//]: # (He likes using silver needles, one needle can make a burly man go limp as mud.)

[//]: # ()

[//]: # (They work well together, one in light, one in shadow, countless beastmen have died by their hands.)

{{Survivor Character Commentary}}

### Story Reflection

[//]: # (Share your overall feelings about this chapter, can be reflections on worldview, thoughts on character fates, etc.)

[//]: # (Use first person, natural like talking with a friend.)

[//]: # (Example:)

[//]: # (This world of only male beastmen has a unique cruelty to death.)

[//]: # ()

[//]: # (When they're killed, the male cock will erect and ejaculate, the female breasts will leak or even spray milk.)

[//]: # ()

[//]: # (Dual features, dual humiliation, dying even more awkwardly.)

[//]: # ()

[//]: # (---)

[//]: # (But this is the law of this world, survival of the fittest, eat or be eaten.)

[//]: # ()

[//]: # (Killers like Yan and Liang are just pitiful people trying to survive under this cruel law.)

{{Story Reflection Content}}

---

{{Same as top navigation bar}}

---

[//]: # (=== Default Value Instructions ===)

[//]: # (If user does not provide configuration, use following default values:)

[//]: # (World Code: bs)

[//]: # (Work Nature: o)

[//]: # (Work Format: s)

[//]: # (Work Number: 001)

[//]: # (Work Identifier: untitled-story)

[//]: # (Chinese Title: 未命名故事)

[//]: # (English Title: Untitled Story)

[//]: # (Chaptered Story Subtype: main)

[//]: # (Chapter Number: 001)

[//]: # (Chapter Chinese Title: 未命名章节)

[//]: # (Chapter English Title: Untitled Chapter)

[//]: # (Language: chinese)

[//]: # (Navigation Bar Configuration: Short Original Navigation)

[//]: # (Chapter End Mark: Use corresponding default mark based on story type)

[//]: # (=== File Naming Convention ===)

[//]: # (Automatically generate filename based on configuration:)

[//]: # (Short story: {{World Code}}-{{Work Nature}}-{{Work Format}}-{{Work Number}}-{{Work Identifier}}.md)

[//]: # (Chaptered story: {{World Code}}-{{Work Nature}}-{{Work Format}}-{{Work Number}}-{{Work Identifier}}-ch{{Chapter Number}}.md)

[//]: # (Adaptation chaptered: ch{{Chapter Number}}-{{Chapter English Title Short}}.md)

[//]: # (=== Path Explanation ===)

[//]: # (Select correct directory structure based on work nature:)

[//]: # (Original short story: worlds/{{World Code}}/original-archives/{{Language}}/short-story/)

[//]: # (Original chaptered main story: worlds/{{World Code}}/original-archives/{{Language}}/chaptered-story/main/)

[//]: # (Original chaptered side story: worlds/{{World Code}}/original-archives/{{Language}}/chaptered-story/side/)

[//]: # (Adaptation short story: worlds/{{World Code}}/adaptation-works/short-story/{{Complete Work Code}}/)

[//]: # (Adaptation chaptered story: worlds/{{World Code}}/adaptation-works/chaptered-story/{{Complete Work Code}}/)