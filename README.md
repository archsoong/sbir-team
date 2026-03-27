# sbir-team

SBIR 計畫書撰寫知識系統。

## 資料夾結構

```
sbir-team/
├── agents/
│   ├── sbir-pm.md               # PM Agent：資格篩選、構想驗證、資料檢查、流程優化
│   ├── sbir-writer.md           # 撰寫 Agent：計畫書生成、待補清單
│   └── sbir-reviewer.md        # 審查 Agent：六維評分、改善建議、客戶補充事項
│
├── skills/
│   ├── eligibility-check/       # 資格篩選
│   │   └── SKILL.md
│   ├── idea-validation/         # 構想驗證
│   │   └── SKILL.md
│   ├── proposal-generation/     # 計畫書生成
│   │   ├── SKILL.md
│   │   ├── references/          # 專用知識（策略、撰寫技巧等）
│   │   └── assets/              # 結構化資料（問卷、章節框架等）
│   ├── budget-planning/         # 經費規劃
│   │   ├── SKILL.md
│   │   ├── references/          # 專用知識（經費指引）
│   │   └── assets/              # financial_rules.json
│   ├── quality-review/          # 品質審查
│   │   ├── SKILL.md
│   │   └── assets/              # quality_metrics.json
│   └── optimize-flow/           # 流程優化（sbir-pm 專屬）
│       └── SKILL.md
│
└── shared/                      # 多個 skill 共用的知識
    ├── SKILL.md                 # SBIR 計畫總覽（入口文件）
    ├── guidelines/              # 共用指引（資格、審查標準、方法論等）
    ├── templates/               # 計畫書範本
    ├── checklists/              # 檢核表
    ├── faq/                     # FAQ
    ├── statistics/              # 產業統計數據
    └── examples/                # 案例、常見錯誤
```

## 運作方式

1. **sbir-pm** — PM 提交客戶資訊，進行資格篩選、構想驗證、資料完整性檢查。也負責根據使用者回饋優化整個系統（optimize-flow）
2. **sbir-writer** — 接收資料（不一定完整），生成計畫書草稿 + 待補清單
3. **sbir-reviewer** — 六維評分 + 改善建議 + 客戶補充事項（白話建議，人類可直接拿去跟客戶溝通）
4. **等待人類確認** — 人類拿到審查報告後向客戶收集補充資料
5. 客戶回覆後，sbir-writer 修改草稿，sbir-reviewer 複審
6. 重複 3-5 直到品質達標（81+ 分）

**核心原則：** 客戶不一定能一次提供完整資料，每一輪 review 都要提出「需要客戶補什麼」和「建議客戶怎麼準備」，等人類確認後才進入下一輪修改。

## 結構說明

- **agents/** — Agent 定義（角色、流程、規則），Agent 調用 skills
- **skills/** — 每個 skill 一個資料夾，內有 SKILL.md + 專用的 references/ 和 assets/
- **shared/** — 被多個 skill 共用的知識，各 SKILL.md 內用路徑引用
