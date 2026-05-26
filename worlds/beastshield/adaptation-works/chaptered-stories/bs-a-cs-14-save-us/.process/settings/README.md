# Save Us Then Load World — 设定档案总入口

> 本目录存放项目的全部设定档案：关卡、角色、系统。
> 无论找什么，先查本文件的**快速查找表**。

---

## 快速查找表

### "我想找某个角色"
→ 进 [characters/README.md](characters/README.md) — 含按编号排序的全角色速查表，以及**按关卡索引角色**列表。

### "我想找某个关卡的所有角色"
→ 进 [levels/README.md](levels/README.md) — 含按关卡索引角色列表。

### "我想找某个关卡的场景"
→ 进对应关卡目录：`levels/l-XX-关卡名/index.md`，内含场景列表和出场角色。

### "我想看角色之间的关系"
→ [characters/beastshield/l-02-warehouse/_warehouse-relationships.md](characters/beastshield/l-02-warehouse/_warehouse-relationships.md) — 当前覆盖 L-01 / L-02 六名角色。

### "我想了解兽盾制服/兽种设定"
→ [systems/beastshield-uniforms.md](systems/beastshield-uniforms.md) 或 [systems/species-traits.md](systems/species-traits.md)。

---

## 目录结构

```
settings/
├── README.md                          # ← 你在这里
├── systems/                           # 全局系统设定
│   ├── beastshield-uniforms.md        # 五种制服标准外观
│   └── species-traits.md              # 五类兽种生理与性格特点
├── levels/                            # 关卡层（按游戏流程排序）
│   ├── README.md                      # 关卡总览、按关卡索引角色
│   ├── l-01-tutorial/                 # Ch.1 教程关
│   │   ├── index.md                   # 关卡总览
│   │   └── scenes/
│   │       └── sc-01-warehouse.md     # 场景档案
│   ├── l-02-warehouse/                # Ch.2 仓库逃脱
│   │   ├── index.md
│   │   └── scenes/
│   │       └── sc-01-warehouse.md
│   └── l-03-wilderness/               # Ch.3 荒野公路
│       ├── index.md
│       └── scenes/
│           └── sc-01-truck.md
└── characters/                        # 角色全局库（跨关卡复用）
    ├── README.md                      # 角色总览、按关卡索引角色
    ├── NAMING_CONVENTION.md           # 命名规范
    ├── main/                          # 主角及关联角色
    │   ├── protagonist-qidian.md      # 主角·奇点
    │   └── yuhe.md                    # 现实好友·雨禾
    ├── beastshield/                   # 兽盾阵营
    │   ├── ya-dong.md                 # 牙董（兽盾高层）
    │   ├── liu-xu.md                  # 流墟（兽盾实验体）
    │   ├── l-01-tutorial/g-001-xiong-zong.md   # 棕熊兽人
    │   ├── l-02-warehouse/            # 仓库角色+人际关系
    │   │   ├── g-078-xiong-hei.md     # 黑熊兽人
    │   │   ├── g-112-zhu-hei.md       # 黑猪兽人
    │   │   ├── g-205-niu-hui-lan.md   # 灰蓝牛兽人
    │   │   ├── g-217-de-mu.md         # 德牧兽人
    │   │   ├── o-089-hu-cheng.md      # 橙虎兽人
    │   │   └── _warehouse-relationships.md
    │   ├── l-03-wilderness/g-364-niu-hong.md   # 红牛兽人
    │   ├── l-07-underground-arena/_underground-arena.md
    │   ├── l-08-hq-assault/           # HQ攻略角色+档案
    │   │   ├── e-088-hu-he.md         # 虎秦战
    │   │   └── _beastshield-hq-structure.md
    │   ├── l-10-barracks-raid/        # 兵营档案
    │   │   ├── _tiger-barracks.md
    │   │   └── _bear-barracks.md
    │   └── l-11-finale/               # 预留
    ├── agent-bureau/                  # 特工局角色（含群体档案）
    └── others/                        # 其他非兽盾非特工局角色
```

---

## 命名规范速查

| 类型 | 命名格式 | 示例 |
|------|----------|------|
| 关卡目录 | `l-XX-英文名/` | `l-02-warehouse/` |
| 关卡索引 | `index.md` | `l-02-warehouse/index.md` |
| 场景档案 | `sc-NN-场景名.md` | `sc-01-warehouse.md` |
| 角色档案 | `[等级]-[编号]-[拼音].md` | `g-001-xiong-zong.md` |

---

## 当前进度

| 关卡 | 状态 | 场景数 | 角色数 |
|------|------|--------|--------|
| L-01 教程关 | ✅ 已完成 | 1 | 1 |
| L-02 仓库逃脱 | ✅ 已完成 | 1 | 5 |
| L-03 荒野公路 | ✅ 已完成 | 1 | 1 |

---

*设定总入口版本：1.1*
*创建日期：2026-05-24*
*最后更新：2026-05-26*
*适用范围：bs-a-cs-14-save-us 项目*
