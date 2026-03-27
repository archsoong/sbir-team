---
name: proposal-generation
description: "根據 sbir-pm 交付的資料，生成 Phase 1/2 計畫書草稿（8 章節），含資料強化、自檢、待補清單。"
---

# 計畫書生成

**執行者：** sbir-writer

根據 sbir-pm 交付的完整資料，生成 SBIR 計畫書草稿。

## Phase 1 生成流程

依 `assets/proposal_structure.json` 按以下順序生成 8 章節：

**第一批（核心論述）：**

| 章節 | 專家人設 | 字數 |
|------|----------|------|
| 2. 問題陳述 | 募資簡報教練 | 1,200 |
| 3. 創新構想 | CTO | 1,500 |
| 5. 市場分析 | 研究總監 | 1,500 |

**第二批（執行規劃）：**

| 章節 | 專家人設 | 字數 |
|------|----------|------|
| 4. 可行性評估 | PMP 專案管理師 | 1,000 |
| 6. 營收預估 | CFO | 1,000 |
| 7. 團隊與經費 | CHRO | 1,000 |

**第三批（首尾收整）：**

| 章節 | 專家人設 | 字數 |
|------|----------|------|
| 1. 公司簡介 | COO | 800 |
| 8. 結論 | 公司發言人 | 300 |

## Phase 2

使用 `assets/questions_phase2.json` 確認額外欄位，依 `shared/templates/phase2_proposal.md` 結構（30-40 頁）。

## 本 skill 的檔案

**assets/（結構化資料）：**
- `proposal_structure.json` — 8 章節框架 + 專家人設提示詞
- `enrich_criteria.json` — 模糊回答自動強化規則
- `questions.json` — Phase 1 問卷（29 題）
- `questions_phase2.json` — Phase 2 問卷
- `template_phase1.md` — Phase 1 輸出範本
- `query_synonyms.json` — 搜尋詞擴展同義詞

**references/（專用知識）：**
- `phase1_strategy.md` / `phase2_strategy.md` / `phase2plus_strategy.md` — 各階段撰寫策略
- `commercialization.md` — 商業化策略
- `market_analysis.md` — 市場分析撰寫指南
- `methodology_team_building.md` — 團隊組建方法
- `methodology_expected_outcomes.md` — 預期成果 KPI
- `methodology_roi_calculation.md` — ROI 計算方法
- `writing_storytelling.md` / `writing_data_presentation.md` — 撰寫技巧
- `presentation_skills.md` — 簡報技巧
- 其他：execution_guide、closing_report_guide、ip_strategy、local_sbir 等

## 引用的共用知識

- `shared/guidelines/industry_specific_guidance.md` — 產業別審查重點
- `shared/guidelines/methodology_innovation.md` — 創新論述方法
- `shared/guidelines/methodology_market_analysis.md` — 市場分析框架
- `shared/guidelines/methodology_feasibility.md` — 可行性評估方法
- `shared/statistics/` — 產業統計數據
- `shared/templates/` — 計畫書範本
