# 角色档案总览

> 所有兽盾员工角色按编号排序。文件名格式：`[等级]-[编号]-[拼音].md`

---

## 角色速查表

| 编号 | 角色档案 | 角色名 | 种族 | 毛色 | 制服 | 首次登场 | 状态 |
|------|----------|--------|------|------|------|----------|------|
| — | [protagonist-qidian](main/protagonist-qidian.md) | 奇点 | 人类（玩家） | — | — | [Ch.1](../../chapters/volume-1/ch-01-tutorial.md) | 主角 |
| — | [npc-yuhe](main/npc-yuhe.md) | 雨禾 | 人类（玩家） | — | — | [Ch.1](../../chapters/volume-1/ch-01-tutorial.md) | 现实好友 |
| G-001 | [g-001-zong-xiong](beastshield/g-001-zong-xiong.md) | 熊石厚 | 熊 | 棕皮 | G级（军绿） | [L-01](../levels/l-01-tutorial/) | 已拯救 |
| G-078 | [g-078-hei-xiong](beastshield/g-078-hei-xiong.md) | 黑熊兽人 | 熊（黑熊） | 纯黑皮 | G级（军绿） | [L-02](../levels/l-02-warehouse/) | 可拯救 |
| G-112 | [g-112-hei-zhu](beastshield/g-112-hei-zhu.md) | 黑猪兽人 | 猪（野猪） | 黑皮 | G级（军绿） | [L-02](../levels/l-02-warehouse/) | 可拯救 |
| G-205 | [g-205-hui-lan-niu](beastshield/g-205-hui-lan-niu.md) | 灰蓝牛兽人 | 牛（水牛） | 灰蓝皮 | G级（军绿） | [L-02](../levels/l-02-warehouse/) | 可拯救 |
| G-217 | [g-217-de-mu](beastshield/g-217-de-mu.md) | 德牧兽人 | 狗（德牧） | 黑背黄腹 | G级（军绿） | [L-02](../levels/l-02-warehouse/) | 可拯救 |
| G-364 | [g-364-hong-niu](beastshield/g-364-hong-niu.md) | 红牛兽人 | 牛 | 红棕色 | G级（军绿） | [L-03](../levels/l-03-wilderness/) | 可拯救 |
| O-089 | [o-089-cheng-hu](beastshield/o-089-cheng-hu.md) | 橙虎兽人 | 虎 | 橙黄皮 | O级（蓝色） | [L-02](../levels/l-02-warehouse/) | 可拯救 |

---

## 按关卡查看同关角色

| 关卡 | 同关角色列表 |
|------|-------------|
| [L-01](../levels/l-01-tutorial/) | 棕熊兽人 |
| [L-02](../levels/l-02-warehouse/) | 德牧兽人、橙虎兽人、黑猪兽人、灰蓝牛兽人、黑熊兽人 |
| [L-03](../levels/l-03-wilderness/) | 红牛兽人 |

---

## 跨关卡关联

- **棕熊兽人（G-001）** ↔ **黑熊兽人（G-078）**：同族（熊兽种），不同毛色、不同关卡，命运相似
- **灰蓝牛兽人（G-205）** ↔ **红牛兽人（G-364）**：同族（牛兽种），不同毛色、不同关卡，"价值不平等"对照组

---

## 人际关系档案

- [仓库人员人际关系总图](groups/_warehouse-relationships.md) — 覆盖 L-01 与 L-02 六名角色

---

## 目录结构

```
characters/
├── README.md              # 本文件
├── NAMING_CONVENTION.md   # 命名规范
├── main/                  # 主角及关联角色
├── beastshield/           # 兽盾员工（G/O/E/W编号）
├── agent-bureau/          # 特工局角色
├── others/                # 其他非兽盾非特工局角色
└── groups/                # 群体/组织档案
```

## 建档规范

- 文件名：`[等级]-[编号]-[拼音].md`
- 等级字母小写：`g`, `o`, `e`, `r`, `w`
- 编号至少3位，不足补零：`g-001`, `o-089`
- 拼音采用全拼，无分隔符或驼峰：`zong-xiong`, `hui-lan-niu`
- 按角色归属放入对应子目录

---

*角色总览版本：1.1*
*创建日期：2026-05-24*
*最后更新：2026-05-26*
