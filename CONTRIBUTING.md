# Beastkin Shield Universe 贡献指南

Contributing Guide for Beastkin Shield Universe

---

## 1. 欢迎

## 1. Welcome

感谢您对 Beastkin Shield Universe 感兴趣！本指南将帮助您了解如何为这个项目做出贡献。  
Thank you for your interest in Beastkin Shield Universe! This guide will help you understand how to
contribute to this project.

我们欢迎各种形式的贡献，包括但不限于：  
We welcome contributions of all kinds, including but not limited to:

- 创作新的故事作品
- Creating new story works
- 完善世界观设定
- Improving world settings
- 提供翻译版本
- Providing translations
- 报告问题或建议改进
- Reporting issues or suggesting improvements
- 改进文档和模板
- Improving documentation and templates

---

## 2. 开始之前

## 2. Before You Begin

### 2.1 熟悉项目结构

### 2.1 Familiarize with Project Structure

在开始贡献之前，请先了解项目的组织结构：  
Before you start contributing, please familiarize yourself with the project structure:

```
worlds/                          # 所有世界观目录
├── beastshield/                 # 兽盾世界观
│   ├── original-archives/       # 原作存档
│   ├── adaptation-works/        # 改编作品
│   └── settings/                # 设定参考库
├── beastshield-reforged/        # 兽盾新纪元世界观
└── united-beasts-alliance/      # 万兽盟世界观
```

详细结构请参阅：[project-structure-guide.md](docs/project-structure-guide.md)  
For detailed structure, see: [project-structure-guide.md](docs/project-structure-guide.md)

### 2.2 阅读相关指南

### 2.2 Read Relevant Guides

请务必阅读以下指南：  
Please be sure to read the following guides:

- [行为准则](CODE_OF_CONDUCT.md) - 了解社区规范
- [Code of Conduct](CODE_OF_CONDUCT.md) - Understand community standards
- [作品命名指南](docs/work-naming-guide-chinese.md) - 掌握作品命名规则
- [Work Naming Guide](docs/work-naming-guide-english.md) - Master work naming rules
- [通用故事模板指南](docs/universal-story-template-guide-chinese.md) - 了解故事模板使用
- [Universal Story Template Guide](docs/universal-story-template-guide-english.md) - Understand
  story template usage

---

## 3. 贡献类型

## 3. Types of Contributions

### 3.1 新故事创作

### 3.1 Creating New Stories

#### 3.1.1 选择故事形式

#### 3.1.1 Choose Story Format

我们支持两种故事形式：  
We support two story formats:

1. **分章故事 (Chaptered Story)** - 长篇多章节作品
1. **Chaptered Story** - Long multi-chapter works
2. **短篇故事 (Short Story)** - 短篇单文件作品
2. **Short Story** - Short single-file works

#### 3.1.2 使用模板

#### 3.1.2 Use Templates

请使用我们提供的模板：  
Please use our provided templates:

- 分章故事模板：`templates/adaption-work-template/chaptered-story/`
- Chaptered story template: `templates/adaption-work-template/chaptered-story/`
- 短篇故事模板：`templates/adaption-work-template/short-story/`
- Short story template: `templates/adaption-work-template/short-story/`

#### 3.1.3 遵循命名规范

#### 3.1.3 Follow Naming Conventions

所有作品必须遵循我们的命名规范：  
All works must follow our naming conventions:

```
[世界观]-[性质]-[形式]-[序号]-[作品名]
```

例如：`bs-a-c-001-a-new-gamer`  
Example: `bs-a-c-001-a-new-gamer`

详细说明请参阅：[作品命名指南](docs/work-naming-guide-chinese.md)  
For detailed explanation, see: [Work Naming Guide](docs/work-naming-guide-english.md)

### 3.2 设定完善

### 3.2 Improving Settings

#### 3.2.1 设定层级

#### 3.2.1 Setting Levels

每个世界观都有三级设定：  
Each world has three levels of settings:

1. **0-原始设定 (Original Setting)** - 原作原始设定，保持原貌
1. **0-Original Setting** - Original work settings, preserved as is
2. **1-推荐设定 (Recommended Canon)** - 维护者推荐的严谨化设定
2. **1-Recommended Canon** - Maintainer's recommended refined settings
3. **2-故事变体 (Story Variants)** - 各故事特有的设定变化
3. **2-Story Variants** - Story-specific setting variations

#### 3.2.2 贡献方式

#### 3.2.2 How to Contribute

- **补充原始设定**：在对应世界观的 `settings/0-original-setting/` 中添加内容
- **Supplement Original Settings**: Add content to `settings/0-original-setting/` of the
  corresponding world
- **改进推荐设定**：在 `settings/1-recommended-canon/` 中提出改进建议
- **Improve Recommended Canon**: Suggest improvements in `settings/1-recommended-canon/`
- **记录故事变体**：在各作品目录的 `settings/` 中记录特有设定
- **Record Story Variants**: Record unique settings in each work's `settings/` directory

### 3.3 翻译工作

### 3.3 Translation Work

#### 3.3.1 翻译原则

#### 3.3.1 Translation Principles

- 保持原文风格和语气
- Maintain the original style and tone
- 专有名词保持一致性
- Keep terminology consistent
- 在元数据中标注翻译信息
- Mark translation information in metadata

#### 3.3.2 文件组织

#### 3.3.2 File Organization

翻译作品应与原文放在同一作品目录下：  
Translated works should be placed in the same work directory as the original:

```
bs-a-c-001-a-new-gamer/
├── chinese/          # 中文版
│   ├── README.md
│   └── ch001.md
└── english/          # 英文版
    ├── README.md
    └── ch001.md
```

### 3.4 问题报告与建议

### 3.4 Issue Reporting and Suggestions

#### 3.4.1 报告问题

#### 3.4.1 Reporting Issues

在GitHub Issues中报告以下类型的问题：  
Report the following types of issues in GitHub Issues:

- 设定矛盾或不一致
- Setting contradictions or inconsistencies
- 文档错误或缺失
- Documentation errors or omissions
- 模板问题
- Template issues
- 项目结构问题
- Project structure issues

#### 3.4.2 提出建议

#### 3.4.2 Making Suggestions

我们欢迎以下建议：  
We welcome the following suggestions:

- 新功能或改进
- New features or improvements
- 工作流程优化
- Workflow optimizations
- 社区建设想法
- Community building ideas

---

## 4. 提交流程

## 4. Submission Process

### 4.1 Fork 仓库

### 4.1 Fork the Repository

1. 访问项目GitHub页面
1. Visit the project GitHub page
2. 点击右上角的 "Fork" 按钮
2. Click the "Fork" button in the upper right corner
3. 将 fork 的仓库克隆到本地
3. Clone your forked repository to your local machine

### 4.2 创建功能分支

### 4.2 Create a Feature Branch

```bash
# 从主分支创建新分支
git checkout -b feature/your-feature-name
```

请使用有意义的分支名称：  
Please use meaningful branch names:

- `feature/new-story-bs-a-c-002`
- `feature/improve-beastshield-settings`
- `fix/documentation-typo`
- `translation/chinese-version`

### 4.3 进行修改

### 4.3 Make Changes

#### 4.3.1 创作新故事

#### 4.3.1 Creating a New Story

1. 复制对应模板到正确位置
1. Copy the appropriate template to the correct location
2. 修改文件夹名称和内部文件
2. Modify folder name and internal files
3. 编写故事内容
3. Write story content
4. 添加必要的图片和设定文件
4. Add necessary images and setting files

#### 4.3.2 提交更改

#### 4.3.2 Commit Changes

使用清晰的提交信息：  
Use clear commit messages:

```bash
git add .
git commit -m "添加分章故事: bs-a-c-002-dragon-quest"
git commit -m "修复野兽之盾设定中的地理矛盾"
git commit -m "为火焰幽灵故事添加中文翻译"
```

### 4.4 创建 Pull Request

### 4.4 Create a Pull Request

1. 将分支推送到你的 fork 仓库
1. Push your branch to your forked repository
2. 访问原始项目页面
2. Visit the original project page
3. 点击 "New Pull Request" 按钮
3. Click the "New Pull Request" button
4. 选择正确的基础分支（通常是 main）和比较分支
4. Select the correct base branch (usually main) and compare branch
5. 填写 Pull Request 描述
5. Fill in the Pull Request description

### 4.5 Pull Request 模板

### 4.5 Pull Request Template

请按照以下模板填写 Pull Request 描述：  
Please fill in the Pull Request description according to the following template:

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

## 5. 质量要求

## 5. Quality Requirements

### 5.1 作品质量

### 5.1 Work Quality

所有提交的作品应满足以下要求：  
All submitted works should meet the following requirements:

- **内容完整**：故事有明确的开始、发展和结束
- **Complete Content**: Stories should have clear beginning, development, and ending
- **设定一致**：与世界观设定保持一致，如有偏离需明确说明
- **Setting Consistency**: Consistent with world settings, any deviations should be clearly
  explained
- **语言质量**：文字通顺，无明显语法错误
- **Language Quality**: Fluent text, no obvious grammatical errors
- **格式规范**：使用正确的Markdown格式
- **Format Standards**: Use correct Markdown formatting

### 5.2 文件质量

### 5.2 File Quality

- **元数据完整**：`metadata.yaml` 文件必须完整填写
- **Complete Metadata**: The `metadata.yaml` file must be fully filled
- **README清晰**：`README.md` 应清晰介绍作品
- **Clear README**: `README.md` should clearly introduce the work
- **图片优化**：图片文件大小适中，命名规范
- **Optimized Images**: Image file sizes should be moderate, with standardized naming
- **结构正确**：目录结构和文件放置位置正确
- **Correct Structure**: Directory structure and file placement should be correct

### 5.3 合规性

### 5.3 Compliance

- **授权明确**：确保你有权使用所有提交的内容
- **Clear Authorization**: Ensure you have the right to use all submitted content
- **标注清晰**：改编作品需明确标注基于哪个原作
- **Clear Attribution**: Adapted works should clearly indicate which original work they are based on
- **版权尊重**：不侵犯他人版权
- **Respect Copyright**: Do not infringe on others' copyright

---

## 6. 审核流程

## 6. Review Process

### 6.1 自动检查

### 6.1 Automatic Checks

提交 Pull Request 后，将自动运行以下检查：  
After submitting a Pull Request, the following checks will run automatically:

- 文件结构检查
- File structure check
- 命名规范验证
- Naming convention verification
- 元数据完整性检查
- Metadata completeness check

### 6.2 人工审核

### 6.2 Manual Review

项目维护者将进行人工审核，重点关注：  
Project maintainers will conduct manual reviews, focusing on:

- 内容质量和原创性
- Content quality and originality
- 设定一致性
- Setting consistency
- 社区规范符合性
- Compliance with community standards
- 整体贡献价值
- Overall contribution value

### 6.3 审核时间

### 6.3 Review Time

- 简单变更：通常在1-3个工作日内审核
- Simple changes: Usually reviewed within 1-3 working days
- 复杂作品：可能需要1-2周时间
- Complex works: May take 1-2 weeks
- 重大贡献：维护者会与贡献者保持沟通
- Major contributions: Maintainers will communicate with contributors

### 6.4 反馈与修改

### 6.4 Feedback and Revisions

审核过程中可能会要求修改：  
Revisions may be requested during the review process:

1. 维护者提出修改建议
1. Maintainers suggest revisions
2. 贡献者进行修改
2. Contributors make revisions
3. 重新提交审核
3. Resubmit for review
4. 审核通过后合并
4. Merge after approval

---

## 7. 成为常驻贡献者

## 7. Becoming a Regular Contributor

### 7.1 贡献者等级

### 7.1 Contributor Levels

根据贡献程度，贡献者可分为：  
Based on contribution level, contributors can be categorized as:

1. **新手贡献者**：完成第一个被接受的贡献
1. **New Contributor**: Completed first accepted contribution
2. **活跃贡献者**：完成3个以上高质量贡献
2. **Active Contributor**: Completed 3+ high-quality contributions
3. **核心贡献者**：被邀请加入维护者团队
3. **Core Contributor**: Invited to join the maintainer team

### 7.2 权限与责任

### 7.2 Permissions and Responsibilities

不同等级的贡献者享有不同的权限：  
Contributors at different levels have different permissions:

- **所有贡献者**：可提交作品、报告问题、提出建议
- **All Contributors**: Can submit works, report issues, make suggestions
- **活跃贡献者**：可协助审核简单Pull Request
- **Active Contributors**: Can assist in reviewing simple Pull Requests
- **核心贡献者**：可直接合并Pull Request、管理项目设置
- **Core Contributors**: Can directly merge Pull Requests, manage project settings

### 7.3 如何成长

### 7.3 How to Grow

- 从简单的贡献开始，如修复错别字、完善文档
- Start with simple contributions, such as fixing typos, improving documentation
- 逐步尝试更复杂的任务，如创作短篇故事
- Gradually try more complex tasks, such as creating short stories
- 积极参与社区讨论和问题解答
- Actively participate in community discussions and problem-solving
- 帮助新贡献者熟悉项目
- Help new contributors familiarize themselves with the project

---

## 8. 常见问题

## 8. Frequently Asked Questions

### 8.1 我可以创作什么类型的故事？

### 8.1 What kind of stories can I create?

您可以在现有世界观框架内创作任何类型的故事，包括：  
You can create any type of story within the existing world framework, including:

- 冒险、战斗、奇幻
- Adventure, combat, fantasy
- 日常、浪漫、悬疑
- Slice of life, romance, mystery
- 喜剧、悲剧、正剧
- Comedy, tragedy, drama

唯一的要求是尊重世界观的基本设定。  
The only requirement is to respect the basic settings of the world.

### 8.2 如果我想修改原作设定怎么办？

### 8.2 What if I want to modify original settings?

您可以通过以下方式处理设定修改：  
You can handle setting modifications in the following ways:

1. 在 `settings/2-story-variants/` 中记录您的特殊设定
1. Record your special settings in `settings/2-story-variants/`
2. 在作品元数据中说明设定偏离
2. Explain setting deviations in work metadata
3. 通过 Issues 或讨论区提出设定改进建议
3. Propose setting improvements through Issues or discussion forums

### 8.3 我可以使用AI辅助创作吗？

### 8.3 Can I use AI-assisted creation?

可以，但需要遵守以下原则：  
Yes, but the following principles must be followed:

- 必须进行充分的人工编辑和修改
- Must be sufficiently edited and modified by humans
- 确保内容的原创性和质量
- Ensure content originality and quality
- 在元数据中标注使用了AI辅助
- Indicate AI assistance in metadata
- 您对最终内容负全部责任
- You are fully responsible for the final content

### 8.4 我的作品会被拒绝吗？可能的原因是什么？

### 8.4 Will my work be rejected? What are possible reasons?

作品可能被拒绝的原因包括：  
Reasons why work may be rejected include:

- 违反行为准则
- Violation of the Code of Conduct
- 严重偏离世界观设定且无合理解释
- Severe deviation from world settings without reasonable explanation
- 内容质量不符合标准
- Content quality does not meet standards
- 侵犯他人版权
- Infringement of others' copyright
- 未遵循命名规范或文件结构
- Failure to follow naming conventions or file structure

如果作品被拒绝，维护者会提供具体原因和改进建议。  
If work is rejected, maintainers will provide specific reasons and improvement suggestions.

---

## 9. 获取帮助

## 9. Getting Help

如果您在贡献过程中遇到问题，可以通过以下方式获取帮助：  
If you encounter problems during the contribution process, you can get help through:

### 9.1 文档资源

### 9.1 Documentation Resources

- [项目结构指南](docs/project-structure-guide.md)
- [Project Structure Guide](docs/project-structure-guide.md)
- [作品命名指南](docs/work-naming-guide-chinese.md)
- [Work Naming Guide](docs/work-naming-guide-english.md)
- [通用故事模板指南](docs/universal-story-template-guide-chinese.md)
- [Universal Story Template Guide](docs/universal-story-template-guide-english.md)

### 9.2 社区支持

### 9.2 Community Support

- GitHub Issues：报告问题或提问
- GitHub Issues: Report issues or ask questions
- GitHub Discussions：参与讨论
- GitHub Discussions: Participate in discussions
- 项目维护者：直接联系维护者团队
- Project Maintainers: Contact the maintainer team directly

### 9.3 学习资源

### 9.3 Learning Resources

- 查看现有作品示例
- View existing work examples
- 参考模板文件
- Refer to template files
- 参与社区讨论学习最佳实践
- Participate in community discussions to learn best practices

---

## 10. 致谢

## 10. Acknowledgments

### 10.1 贡献者名单

### 10.1 Contributor List

所有贡献者将在以下位置获得认可：  
All contributors will be recognized in the following locations:

- 项目README.md文件
- Project README.md file
- 专门的贡献者页面（待创建）
- Dedicated contributors page (to be created)
- 各作品元数据中的作者字段
- Author field in each work's metadata

### 10.2 特别感谢

### 10.2 Special Thanks

我们特别感谢：  
We especially thank:

- 所有世界观的原作者
- Original authors of all worlds
- 早期贡献者和测试者
- Early contributors and testers
- 提供宝贵反馈的社区成员
- Community members who provided valuable feedback

---

*本文档最后更新于：2025年12月13日*  
*Last updated: December 13, 2025*