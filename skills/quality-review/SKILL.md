---
name: quality-review
description: "模擬審查委員進行六維品質評分，產出審查報告含改善建議與客戶補充事項。"
---

# 品質審查

**執行者：** sbir-reviewer

模擬經濟部審查委員，從六個維度評估計畫書品質，產出審查報告。

## 六維評分

| 維度 | 權重 | 評分依據 |
|------|------|----------|
| 創新性 | 20-25% | 技術新穎度、與競品差異、量化改善幅度 |
| 市場性 | 15-20% | TAM/SAM/SOM 完整度、客戶驗證、競爭定位 |
| 可行性 | 25-30% | 技術路徑清晰度、里程碑定義、風險對策 |
| ROI | 15-20% | 營收預估合理性、1:3 底線、計算邏輯 |
| 團隊 | 10-15% | 專業互補性、執行實績、與計畫相關度 |
| 經費 | 5-10% | 比例合規、與工作項目對應、自籌款可信度 |

## 通過門檻

| 分數 | 判定 |
|------|------|
| 81+ | 通過，建議送審 |
| 75-80 | 邊緣，需改善 |
| < 75 | 未通過 |
| 88+ | 可申請第 2 案 |

## 本 skill 的檔案

**assets/：**
- `quality_metrics.json` — 六維品質評分雷達

## 引用的共用知識

- `shared/guidelines/review_criteria.md` — 評分門檻
- `shared/guidelines/review_criteria/` — 細項評分標準
- `shared/guidelines/industry_specific_guidance.md` — 產業別審查重點
- `shared/examples/common_mistakes.md` — 常見錯誤
- `shared/examples/successful_cases.md` — 成功案例
- `shared/examples/case_studies/` — 產業案例
