# 角色档案总览

> 所有兽盾员工角色按编号排序。文件名格式：`[等级]-[编号]-[拼音].md`

---

## 角色速查表

| 编号 | 角色档案 | 角色名 | 种族 | 毛色 | 制服 | 首次登场 | 状态 |
|------|----------|--------|------|------|------|----------|------|
| — | [protagonist-qidian](main/protagonist-qidian.md) | 奇点 | 人类（玩家） | — | — | [Ch.1](../../chapters/volume-1/ch-01-tutorial.md) | 主角 |
| — | [yuhe](main/yuhe.md) | 雨禾 | 人类（玩家） | — | — | [Ch.1](../../chapters/volume-1/ch-01-tutorial.md) | 现实好友 |
| G-001 | [g-001-zong-xiong](beastshield/l-01-tutorial/g-001-zong-xiong.md) | 熊石厚 | 熊 | 棕皮 | G级（军绿） | [L-01](../levels/l-01-tutorial/) | 已拯救 |
| G-078 | [g-078-hei-xiong](beastshield/l-02-warehouse/g-078-hei-xiong.md) | 黑熊兽人 | 熊（黑熊） | 纯黑皮 | G级（军绿） | [L-02](../levels/l-02-warehouse/) | 可拯救 |
| G-112 | [g-112-hei-zhu](beastshield/l-02-warehouse/g-112-hei-zhu.md) | 黑猪兽人 | 猪（野猪） | 黑皮 | G级（军绿） | [L-02](../levels/l-02-warehouse/) | 可拯救 |
| G-205 | [g-205-hui-lan-niu](beastshield/l-02-warehouse/g-205-hui-lan-niu.md) | 灰蓝牛兽人 | 牛（水牛） | 灰蓝皮 | G级（军绿） | [L-02](../levels/l-02-warehouse/) | 可拯救 |
| G-217 | [g-217-de-mu](beastshield/l-02-warehouse/g-217-de-mu.md) | 德牧兽人 | 狗（德牧） | 黑背黄腹 | G级（军绿） | [L-02](../levels/l-02-warehouse/) | 可拯救 |
| G-364 | [g-364-hong-niu](beastshield/l-03-wilderness/g-364-hong-niu.md) | 红牛兽人 | 牛 | 红棕色 | G级（军绿） | [L-03](../levels/l-03-wilderness/) | 可拯救 |
| O-089 | [o-089-cheng-hu](beastshield/l-02-warehouse/o-089-cheng-hu.md) | 橙虎兽人 | 虎 | 橙黄皮 | O级（蓝色） | [L-02](../levels/l-02-warehouse/) | 可拯救 |

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

- [仓库人员人际关系总图](beastshield/l-02-warehouse/_warehouse-relationships.md) — 覆盖 L-01 与 L-02 六名角色

---

## 目录结构

```
characters/
├── README.md              # 本文件
├── NAMING_CONVENTION.md   # 命名规范
├── main/                  # 主角及关联角色
│   ├── protagonist-qidian.md    # 主角·奇点
│   └── yuhe.md                  # 现实好友·雨禾
├── beastshield/           # 兽盾阵营（按首次出场关卡分目录）
│   ├── ya-dong.md               # 牙董（兽盾高层）
│   ├── liu-xu.md                # 流墟（兽盾实验体）
│   ├── l-01-tutorial/           # 棕熊兽人
│   ├── l-02-warehouse/          # 德牧、橙虎、黑猪、灰蓝牛、黑熊
│   ├── l-03-wilderness/         # 红牛兽人
│   ├── l-07-underground-arena/  # 群体档案
│   ├── l-08-hq-assault/         # 虎秦战 + 群体档案
│   ├── l-10-barracks-raid/      # 虎/熊兵营档案
│   └── l-11-finale/             # 预留
├── agent-bureau/          # 特工局角色（含群体档案）
│   ├── panda.md, yin.md, red-tiger.md, commander.md
│   ├── white-bear.md            # 白熊武道家（后续加入）
│   └── _agent-bureau.md         # 群体档案
├── police/                # 警察系统
│   └── sheriff-bull.md          # 牛警长
└── others/                # 其他独立角色
    └── shopkeeper.md            # 武器店老板
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
