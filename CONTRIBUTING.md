# Beastkin Shield Universe 贡献指南 / Contributing Guide for Beastkin Shield Universe

**版本 2.0 · 最后更新：2025年12月13日 · 适配命名体系：[2.1.1](docs/work-naming-guide-english.md) ·
适配模板指南：[4.3](docs/universal-story-template-guide-english.md)**

---

## 1. 欢迎 / Welcome

感谢您对 Beastkin Shield Universe 感兴趣！本指南将帮助您了解如何为这个项目做出贡献。我们特别推荐新创作者从
**改编作品**开始，这是融入社区最顺畅的路径。

---

Thank you for your interest in Beastkin Shield Universe! This guide will help you understand how to
contribute to this project. We especially recommend new creators to start with **adaptation works**,
as it's the smoothest path to integrate into the community.

---

## 2. 开始之前 / Before You Begin

### 2.1 熟悉项目结构 / Familiarize with Project Structure

在开始贡献之前，请先了解项目的组织结构：

```
worlds/                          # 所有世界观目录
├── beastshield/                 # 兽盾世界观
│   ├── original-archives/       # 原作存档
│   ├── adaptation-works/        # 改编作品（推荐起点）
│   └── settings/                # 设定参考库
├── beastshield-reforged/        # 兽盾新纪元世界观
└── united-beasts-alliance/      # 万兽盟世界观
```

详细结构请参阅：[project-structure-guide.md](docs/project-structure-guide.md)

---

Before you start contributing, please familiarize yourself with the project structure:

```
worlds/                          # All world directories
├── beastshield/                 # Beastshield world
│   ├── original-archives/       # Original works archive
│   ├── adaptation-works/        # Adaptation works (recommended start)
│   └── settings/                # Settings library
├── beastshield-reforged/        # Beastshield Reforged world
└── united-beasts-alliance/      # United Beasts Alliance world
```

For detailed structure, see: [project-structure-guide.md](docs/project-structure-guide.md)

---

### 2.2 阅读相关指南 / Read Relevant Guides

**强烈推荐：从改编作品开始**
我们推荐所有新创作者从 `adaptation-works` 开始创作，这有助于理解世界观、获得社区反馈，并可在作品完成后申请晋升为官方作品。

请务必阅读以下指南：

- [行为准则](CODE_OF_CONDUCT.md) - 了解社区规范
- [作品命名指南](docs/work-naming-guide-chinese.md) - 掌握作品命名规则（版本2.1.1）
- [通用故事模板指南](docs/universal-story-template-guide-chinese.md) - 了解故事模板使用（版本4.3）

---

**Strongly Recommended: Start with Adaptation Works**
We recommend all new creators to start with `adaptation-works`. This helps understand the world,
receive community feedback, and allows applying for promotion to official works after completion.

Please be sure to read the following guides:

- [Code of Conduct](CODE_OF_CONDUCT.md) - Understand community standards
- [Work Naming Guide](docs/work-naming-guide-english.md) - Master work naming rules (v2.1.1)
- [Universal Story Template Guide](docs/universal-story-template-guide-english.md) - Understand
  story template usage (v4.3)

---

## 3. 贡献类型 / Types of Contributions

### 3.1 新故事创作 / Creating New Stories

#### 3.1.1 选择故事形式 / Choose Story Format

我们支持两种故事形式：

1. **分章故事 (Chaptered Story)** - 长篇多章节作品
2. **短篇故事 (Short Story)** - 短篇单文件作品

---

We support two story formats:

1. **Chaptered Story** - Long multi-chapter works
2. **Short Story** - Short single-file works

---

#### 3.1.2 推荐路径：从改编作品开始 / Recommended Path: Start with Adaptation Works

**强烈推荐新创作者从改编作品开始**：

1. 使用改编作品模板（性质字段固定为 `a`）
2. 在 `adaptation-works/` 目录下创作
3. 遵循完整的命名规范，**章节标题必填**
4. 作品完成后可申请晋升为官方作品

请按照[通用故事模板指南](docs/universal-story-template-guide-chinese.md)中的"快速开始"步骤操作。

---

**We strongly recommend new creators to start with adaptation works**:

1. Use adaptation work templates (nature field fixed as `a`)
2. Create works in the `adaptation-works/` directory
3. Follow complete naming conventions, **chapter titles are mandatory**
4. Apply for promotion to official works after completion

Please follow the "Quick Start" steps in
the [Universal Story Template Guide](docs/universal-story-template-guide-english.md).

---

#### 3.1.3 使用模板 / Use Templates

请使用我们提供的模板：

- 分章故事模板：`templates/adaption-work-template/chaptered-story/`
- 短篇故事模板：`templates/adaption-work-template/short-story/`

**注意**：改编作品请使用模板中对应的"改编"导航栏配置。

---

Please use our provided templates:

- Chaptered story template: `templates/adaption-work-template/chaptered-story/`
- Short story template: `templates/adaption-work-template/short-story/`

**Note**: For adaptation works, please use the corresponding "Adaptation" navigation bar
configurations in the template.

---

#### 3.1.4 遵循命名规范 / Follow Naming Conventions

所有作品必须遵循我们的命名规范：

```
[世界观]-[性质]-[形式]-[序号]-[作品名]
```

**改编作品示例**：`bs-a-c-001-a-new-gamer`（性质为`a`）

详细说明请参阅：[作品命名指南](docs/work-naming-guide-chinese.md)

---

All works must follow our naming conventions:

```
[world]-[nature]-[format]-[number]-[work-name]
```

**Adaptation work example**: `bs-a-c-001-a-new-gamer` (nature is `a`)

For detailed explanation, see: [Work Naming Guide](docs/work-naming-guide-english.md)

---

### 3.2 设定完善 / Improving Settings

#### 3.2.1 设定层级 / Setting Levels

每个世界观都有三级设定：

1. **0-原始设定 (Original Setting)** - 原作原始设定，保持原貌
2. **1-推荐设定 (Recommended Canon)** - 维护者推荐的严谨化设定
3. **2-故事变体 (Story Variants)** - 各故事特有的设定变化

---

Each world has three levels of settings:

1. **0-Original Setting** - Original work settings, preserved as is
2. **1-Recommended Canon** - Maintainer's recommended refined settings
3. **2-Story Variants** - Story-specific setting variations

---

#### 3.2.2 贡献方式 / How to Contribute

- **补充原始设定**：在对应世界观的 `settings/0-original-setting/` 中添加内容
- **改进推荐设定**：在 `settings/1-recommended-canon/` 中提出改进建议
- **记录故事变体**：在各作品目录的 `settings/` 中记录特有设定

---

- **Supplement Original Settings**: Add content to `settings/0-original-setting/` of the
  corresponding world
- **Improve Recommended Canon**: Suggest improvements in `settings/1-recommended-canon/`
- **Record Story Variants**: Record unique settings in each work's `settings/` directory

---

### 3.3 翻译工作 / Translation Work

#### 3.3.1 翻译原则 / Translation Principles

- 保持原文风格和语气
- 专有名词保持一致性
- 在元数据中标注翻译信息

---

- Maintain the original style and tone
- Keep terminology consistent
- Mark translation information in metadata

---

#### 3.3.2 文件组织 / File Organization

翻译作品应与原文放在同一作品目录下：

```
bs-a-c-001-a-new-gamer/
├── chinese/          # 中文版
│   ├── README.md
│   └── ch001.md
└── english/          # 英文版
    ├── README.md
    └── ch001.md
```

---

Translated works should be placed in the same work directory as the original:

```
bs-a-c-001-a-new-gamer/
├── chinese/          # Chinese version
│   ├── README.md
│   └── ch001.md
└── english/          # English version
    ├── README.md
    └── ch001.md
```

---

### 3.4 问题报告与建议 / Issue Reporting and Suggestions

#### 3.4.1 报告问题 / Reporting Issues

在GitHub Issues中报告以下类型的问题：

- 设定矛盾或不一致
- 文档错误或缺失
- 模板问题
- 项目结构问题

---

Report the following types of issues in GitHub Issues:

- Setting contradictions or inconsistencies
- Documentation errors or omissions
- Template issues
- Project structure issues

---

#### 3.4.2 提出建议 / Making Suggestions

我们欢迎以下建议：

- 新功能或改进
- 工作流程优化
- 社区建设想法

---

We welcome the following suggestions:

- New features or improvements
- Workflow optimizations
- Community building ideas

---

## 4. 提交流程 / Submission Process

### 4.1 Fork 仓库 / Fork the Repository

1. 访问项目GitHub页面
2. 点击右上角的 "Fork" 按钮
3. 将 fork 的仓库克隆到本地

---

1. Visit the project GitHub page
2. Click the "Fork" button in the upper right corner
3. Clone your forked repository to your local machine

---

### 4.2 创建功能分支 / Create a Feature Branch

```bash
# 从主分支创建新分支
git checkout -b feature/your-feature-name
```

请使用有意义的分支名称：

- `feature/new-story-bs-a-c-002`
- `feature/improve-beastshield-settings`
- `fix/documentation-typo`
- `translation/chinese-version`

---

```bash
# Create a new branch from main
git checkout -b feature/your-feature-name
```

Please use meaningful branch names:

- `feature/new-story-bs-a-c-002`
- `feature/improve-beastshield-settings`
- `fix/documentation-typo`
- `translation/chinese-version`

---

### 4.3 进行修改 / Make Changes

#### 4.3.1 创作新故事 / Creating a New Story

1. 复制对应模板到正确位置
2. 修改文件夹名称和内部文件
3. 编写故事内容
4. 添加必要的图片和设定文件

---

1. Copy the appropriate template to the correct location
2. Modify folder name and internal files
3. Write story content
4. Add necessary images and setting files

---

#### 4.3.2 提交更改 / Commit Changes

使用清晰的提交信息：

```bash
git add .
git commit -m "添加分章故事: bs-a-c-002-dragon-quest"
git commit -m "修复野兽之盾设定中的地理矛盾"
git commit -m "为火焰幽灵故事添加中文翻译"
```

---

Use clear commit messages:

```bash
git add .
git commit -m "Add chaptered story: bs-a-c-002-dragon-quest"
git commit -m "Fix geographical contradictions in Beastshield settings"
git commit -m "Add Chinese translation for Flame Ghost story"
```

---

### 4.4 创建 Pull Request / Create a Pull Request

1. 将分支推送到你的 fork 仓库
2. 访问原始项目页面
3. 点击 "New Pull Request" 按钮
4. 选择正确的基础分支（通常是 main）和比较分支
5. 填写 Pull Request 描述

---

1. Push your branch to your forked repository
2. Visit the original project page
3. Click the "New Pull Request" button
4. Select the correct base branch (usually main) and compare branch
5. Fill in the Pull Request description

---

### 4.5 Pull Request 模板 / Pull Request Template

请按照以下模板填写 Pull Request 描述：

```markdown
## 变更类型

- [ ] 新故事创作
- [ ] 设定完善
- [ ] 翻译工作
- [ ] 问题修复
- [ ] 文档改进
- [ ] 其他

## 相关世界观

- [ ] beastshield
- [ ] beastshield-reforged
- [ ] united-beasts-alliance

## 变更描述

详细描述你的变更内容...

## 检查清单

- [ ] 已阅读并遵守行为准则
- [ ] 遵循作品命名规范
- [ ] 使用正确的模板
- [ ] 元数据完整准确
- [ ] 故事内容完整
- [ ] 图片命名符合规范

## 测试说明

如何测试或验证你的变更...

## 截图（如适用）

添加相关截图...
```

---

Please fill in the Pull Request description according to the following template:

```markdown
## Change Type

- [ ] New story creation
- [ ] Settings improvement
- [ ] Translation work
- [ ] Bug fix
- [ ] Documentation improvement
- [ ] Other

## Related World

- [ ] beastshield
- [ ] beastshield-reforged
- [ ] united-beasts-alliance

## Change Description

Describe your changes in detail...

## Checklist

- [ ] Read and followed the Code of Conduct
- [ ] Followed work naming conventions
- [ ] Used correct templates
- [ ] Metadata is complete and accurate
- [ ] Story content is complete
- [ ] Image naming follows conventions

## Testing Instructions

How to test or verify your changes...

## Screenshots (if applicable)

Add relevant screenshots...
```

---

## 5. 质量要求 / Quality Requirements

### 5.1 作品质量 / Work Quality

所有提交的作品应满足以下要求：

- **内容完整**：故事有明确的开始、发展和结束
- **设定一致**：与世界观设定保持一致，如有偏离需明确说明
- **语言质量**：文字通顺，无明显语法错误
- **格式规范**：使用正确的Markdown格式

---

All submitted works should meet the following requirements:

- **Complete Content**: Stories should have clear beginning, development, and ending
- **Setting Consistency**: Consistent with world settings, any deviations should be clearly
  explained
- **Language Quality**: Fluent text, no obvious grammatical errors
- **Format Standards**: Use correct Markdown formatting

---

### 5.2 文件质量 / File Quality

- **元数据完整**：`metadata.yaml` 文件必须完整填写
- **README清晰**：`README.md` 应清晰介绍作品
- **图片优化**：图片文件大小适中，命名规范
- **结构正确**：目录结构和文件放置位置正确

---

- **Complete Metadata**: The `metadata.yaml` file must be fully filled
- **Clear README**: `README.md` should clearly introduce the work
- **Optimized Images**: Image file sizes should be moderate, with standardized naming
- **Correct Structure**: Directory structure and file placement should be correct

---

### 5.3 合规性 / Compliance

- **授权明确**：确保你有权使用所有提交的内容
- **标注清晰**：改编作品需明确标注基于哪个原作
- **版权尊重**：不侵犯他人版权

---

- **Clear Authorization**: Ensure you have the right to use all submitted content
- **Clear Attribution**: Adapted works should clearly indicate which original work they are based on
- **Respect Copyright**: Do not infringe on others' copyright

---

## 6. 审核流程 / Review Process

### 6.1 自动检查 / Automatic Checks

提交 Pull Request 后，将自动运行以下检查：

- 文件结构检查
- 命名规范验证
- 元数据完整性检查

---

After submitting a Pull Request, the following checks will run automatically:

- File structure check
- Naming convention verification
- Metadata completeness check

---

### 6.2 人工审核 / Manual Review

项目维护者将进行人工审核，重点关注：

- 内容质量和原创性
- 设定一致性
- 社区规范符合性
- 整体贡献价值

---

Project maintainers will conduct manual reviews, focusing on:

- Content quality and originality
- Setting consistency
- Compliance with community standards
- Overall contribution value

---

### 6.3 审核时间 / Review Time

- 简单变更：通常在1-3个工作日内审核
- 复杂作品：可能需要1-2周时间
- 重大贡献：维护者会与贡献者保持沟通

---

- Simple changes: Usually reviewed within 1-3 working days
- Complex works: May take 1-2 weeks
- Major contributions: Maintainers will communicate with contributors

---

### 6.4 反馈与修改 / Feedback and Revisions

审核过程中可能会要求修改：

1. 维护者提出修改建议
2. 贡献者进行修改
3. 重新提交审核
4. 审核通过后合并

---

Revisions may be requested during the review process:

1. Maintainers suggest revisions
2. Contributors make revisions
3. Resubmit for review
4. Merge after approval

---

## 7. 成为常驻贡献者 / Becoming a Regular Contributor

### 7.1 贡献者等级 / Contributor Levels

根据贡献程度，贡献者可分为：

1. **新手贡献者**：完成第一个被接受的贡献
2. **活跃贡献者**：完成3个以上高质量贡献
3. **核心贡献者**：被邀请加入维护者团队

---

Based on contribution level, contributors can be categorized as:

1. **New Contributor**: Completed first accepted contribution
2. **Active Contributor**: Completed 3+ high-quality contributions
3. **Core Contributor**: Invited to join the maintainer team

---

### 7.2 权限与责任 / Permissions and Responsibilities

不同等级的贡献者享有不同的权限：

- **所有贡献者**：可提交作品、报告问题、提出建议
- **活跃贡献者**：可协助审核简单Pull Request
- **核心贡献者**：可直接合并Pull Request、管理项目设置

---

Contributors at different levels have different permissions:

- **All Contributors**: Can submit works, report issues, make suggestions
- **Active Contributors**: Can assist in reviewing simple Pull Requests
- **Core Contributors**: Can directly merge Pull Requests, manage project settings

---

### 7.3 如何成长 / How to Grow

- 从简单的贡献开始，如修复错别字、完善文档
- 逐步尝试更复杂的任务，如创作短篇故事
- 积极参与社区讨论和问题解答
- 帮助新贡献者熟悉项目

---

- Start with simple contributions, such as fixing typos, improving documentation
- Gradually try more complex tasks, such as creating short stories
- Actively participate in community discussions and problem-solving
- Help new contributors familiarize themselves with the project

---

## 8. 常见问题 / Frequently Asked Questions

### 8.1 我可以创作什么类型的故事？ / What kind of stories can I create?

您可以在现有世界观框架内创作任何类型的故事，包括：

- 冒险、战斗、奇幻
- 日常、浪漫、悬疑
- 喜剧、悲剧、正剧

唯一的要求是尊重世界观的基本设定。

---

You can create any type of story within the existing world framework, including:

- Adventure, combat, fantasy
- Slice of life, romance, mystery
- Comedy, tragedy, drama

The only requirement is to respect the basic settings of the world.

---

### 8.2 如果我想修改原作设定怎么办？ / What if I want to modify original settings?

您可以通过以下方式处理设定修改：

1. 在 `settings/2-story-variants/` 中记录您的特殊设定
2. 在作品元数据中说明设定偏离
3. 通过 Issues 或讨论区提出设定改进建议

---

You can handle setting modifications in the following ways:

1. Record your special settings in `settings/2-story-variants/`
2. Explain setting deviations in work metadata
3. Propose setting improvements through Issues or discussion forums

---

### 8.3 我可以使用AI辅助创作吗？ / Can I use AI-assisted creation?

可以，但需要遵守以下原则：

- 必须进行充分的人工编辑和修改
- 确保内容的原创性和质量
- 在元数据中标注使用了AI辅助
- 您对最终内容负全部责任

---

Yes, but the following principles must be followed:

- Must be sufficiently edited and modified by humans
- Ensure content originality and quality
- Indicate AI assistance in metadata
- You are fully responsible for the final content

---

### 8.4 我的作品会被拒绝吗？可能的原因是什么？ / Will my work be rejected? What are possible reasons?

作品可能被拒绝的原因包括：

- 违反行为准则
- 严重偏离世界观设定且无合理解释
- 内容质量不符合标准
- 侵犯他人版权
- 未遵循命名规范或文件结构

如果作品被拒绝，维护者会提供具体原因和改进建议。

---

Reasons why work may be rejected include:

- Violation of the Code of Conduct
- Severe deviation from world settings without reasonable explanation
- Content quality does not meet standards
- Infringement of others' copyright
- Failure to follow naming conventions or file structure

If work is rejected, maintainers will provide specific reasons and improvement suggestions.

---

## 9. 获取帮助 / Getting Help

### 9.1 文档资源 / Documentation Resources

- [项目结构指南](docs/project-structure-guide.md)
- [作品命名指南](docs/work-naming-guide-chinese.md)
- [通用故事模板指南](docs/universal-story-template-guide-chinese.md)

---

- [Project Structure Guide](docs/project-structure-guide.md)
- [Work Naming Guide](docs/work-naming-guide-english.md)
- [Universal Story Template Guide](docs/universal-story-template-guide-english.md)

---

### 9.2 社区支持 / Community Support

- GitHub Issues：报告问题或提问
- GitHub Discussions：参与讨论
- 项目维护者：直接联系维护者团队

---

- GitHub Issues: Report issues or ask questions
- GitHub Discussions: Participate in discussions
- Project Maintainers: Contact the maintainer team directly

---

### 9.3 学习资源 / Learning Resources

- 查看现有作品示例
- 参考模板文件
- 参与社区讨论学习最佳实践

---

- View existing work examples
- Refer to template files
- Participate in community discussions to learn best practices

---

## 10. 致谢 / Acknowledgments

### 10.1 贡献者名单 / Contributor List

所有贡献者将在以下位置获得认可：

- 项目README.md文件
- 专门的贡献者页面（待创建）
- 各作品元数据中的作者字段

---

All contributors will be recognized in the following locations:

- Project README.md file
- Dedicated contributors page (to be created)
- Author field in each work's metadata

---

### 10.2 特别感谢 / Special Thanks

我们特别感谢：

- 所有世界观的原作者
- 早期贡献者和测试者
- 提供宝贵反馈的社区成员

---

We especially thank:

- Original authors of all worlds
- Early contributors and testers
- Community members who provided valuable feedback

---

## 更新记录 / Update History

- **2025-12-13 v2.0**：全面更新，适配新命名体系和模板指南
    - 重构整体结构，明确推荐从改编作品开始的创作路径
    - 更新所有命名规范，引用作品命名指南2.1.1
    - 更新模板使用说明，引用通用故事模板指南4.3
    - 增加作品晋升机制说明
    - 优化中英文对照格式，改善可读性
    - 更新Pull Request模板，增加相关检查项

- **2025-12-13 v1.0**：初始版本发布

---

*本文档最后更新于：2025年12月13日 · 文档版本：2.0*  
*Last updated: December 13, 2025 · Document Version: 2.0*