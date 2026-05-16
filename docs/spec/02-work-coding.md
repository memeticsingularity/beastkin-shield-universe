# Beastkin Universe 作品编码规范 v3.0

> 本文档只定义编码语法。字段语义、元数据填写规则见 `04-metadata.md`。

---

## 1. 编码格式

```
[世界观]-[性质]-[形式]-[序号]-[标识名]
```

## 2. 字段定义

| 字段 | 可选值 | 含义 |
|------|--------|------|
| **世界观** | `bs`, `bso`, `bsp`, `bsr`, `eks`, `pks`, `uba`, `wi` | Beastshield, Online, Paradise, Reforged, Empire Kik, Paradise Kik, UBA, Worldstrider |
| **性质** | `o`, `a`, `c` | original, adaptation, crossover |
| **形式** | `cm`, `cs`, `s` | chaptered-main, chaptered-side, short-story |
| **序号** | 自然数 `1, 2, 3...` | 同世界观同性质同形式下的顺序 |
| **标识名** | kebab-case 英文 | 作品/系列的英文标识 |

## 3. 示例

| 编码 | 含义 |
|------|------|
| `bs-o-cm-1-first-volume` | 兽盾-原创-主线分章-第1卷 |
| `bsp-o-cs-1-green-bull-azhuang` | 兽盾天堂-原创-支线分章-第1个-绿牛阿壮 |
| `bs-a-s-1-first-blood` | 兽盾-改编-短篇-第1个 |
| `bs-c-cs-1-beasts-meet-uba` | 兽盾-联动-支线分章-第1个 |

## 4. 章节文件命名

分章故事内，章节文件统一命名为：

```
ch-{自然数}-{标题简写}.md
```

- 标题简写：英文小写，kebab-case，2-5 个词
- 禁止无标题简写：`ch-1-2.md` ❌ → `ch-1-prologue.md` ✅
- 禁止过长标题：`ch-1-final-thirty-days-morning-scent.md` ❌ → `ch-1-morning-scent.md` ✅

## 5. 短篇文件命名

```
{完整作品编码}.md
```

## 6. 校验规则

编码必须匹配正则：

```regex
^(bs|bso|bsp|bsr|eks|pks|uba|wi)-([oac])-(cm|cs|s)-\d+(-[a-z0-9-]+)?$
```

- 禁止三位数补零：`001` ❌ → `1` ✅
- 禁止下划线：`my_story` ❌ → `my-story` ✅
- 禁止大写字母

---

*版本: 3.0*
*替代: docs/work-naming-guide-chinese.md 的编码部分*
