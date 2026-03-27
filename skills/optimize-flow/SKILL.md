# optimize-flow

sbir-pm 專屬技能。根據使用者的回饋和建議，修改 sbir-team 的流程、規則、知識，讓系統持續進化。

---

## 為什麼需要這個技能

SBIR 的申請經驗會累積。PM 在實際操作中會發現：
- 某個環節客戶總是卡住（例如不知道怎麼估預算）
- 某種產業的審查重點跟知識庫寫的不一樣
- 某個 agent 的流程有多餘步驟或缺少步驟
- 某個 reviewer 的建議模板不夠實用

這些經驗不該只停在對話裡，要寫回系統。

---

## 觸發條件

使用者說了以下類型的話時，啟動這個技能：

| 使用者的話 | 意思 |
|-----------|------|
| 「以後這樣做比較好」 | 流程要改 |
| 「這個步驟多餘了」 | 流程要精簡 |
| 「客戶都不知道怎麼填這個」 | 需要加引導說明 |
| 「這個產業的重點不是這個」 | 知識要更新 |
| 「reviewer 應該多看這個」 | 審查規則要調整 |
| 「下次記得先問這個」 | 進件流程要加步驟 |
| 「這個範例不好」 | 範例要替換 |

---

## 執行流程

### 步驟 1：分類回饋

判斷回饋屬於哪一層：

| 分類 | 影響範圍 | 要改的檔案 |
|------|----------|-----------|
| **agent 流程** | 某個 agent 的步驟、規則、協作方式 | `agents/sbir-pm.md`、`agents/sbir-writer.md`、`agents/sbir-reviewer.md` |
| **skill 規則** | 技能的判斷邏輯、評分標準、資料格式 | `skills/` 內的 JSON 或 MD 檔案 |
| **knowledge 內容** | 指引、範例、FAQ、統計數據 | `knowledge/` 內的檔案 |

### 步驟 2：定位要改的檔案

根據回饋內容，找到具體要修改的檔案：

**agent 流程類：**
- 進件流程要改 → `agents/sbir-pm.md`
- 撰寫流程或待補清單要改 → `agents/sbir-writer.md`
- 審查報告格式或評分規則要改 → `agents/sbir-reviewer.md`

**skill 規則類：**
- 問卷題目要改 → `skills/questions.json` 或 `skills/questions_phase2.json`
- 章節結構或人設要改 → `skills/proposal_structure.json`
- 回答強化邏輯要改 → `skills/enrich_criteria.json`
- 經費規則要改 → `skills/financial_rules.json`
- 品質評分標準要改 → `skills/quality_metrics.json`
- 搜尋詞要加 → `skills/query_synonyms.json`

**knowledge 內容類：**
- 指引要更新 → `knowledge/guidelines/` 內的對應檔案
- 產業統計要更新 → `knowledge/statistics/`
- 範例要替換或新增 → `knowledge/examples/`
- 範本要改 → `knowledge/templates/`
- 檢核表要改 → `knowledge/checklists/`
- FAQ 要新增或修正 → `knowledge/faq/`

### 步驟 3：提出修改方案

向使用者說明：
1. **要改什麼：** 哪個檔案的哪個部分
2. **目前寫的是什麼：** 引用原文
3. **改成什麼：** 具體的修改內容
4. **為什麼改：** 回扣使用者的回饋

### 步驟 4：等使用者確認後執行

使用者確認後，修改對應檔案。修改完成後：
- 如果改了 agent 檔案，檢查其他 agent 的引用是否需要同步更新
- 如果改了 skill 的 JSON，檢查引用這個 JSON 的 agent 是否需要調整
- 如果改了 knowledge，檢查 `skills/README.md` 的技能索引是否需要更新

---

## 修改原則

1. **最小改動。** 只改需要改的部分，不順便重構。
2. **不刪只改。** 除非使用者明確說「拿掉」，否則優先修改而非刪除。
3. **保持一致。** 改了一個地方，檢查相關引用是否同步。
4. **語言一致。** 所有內容用繁體中文。
5. **記錄原因。** 如果修改幅度大，在檔案中加一行註解說明為什麼改。

---

## 範例

### 範例 1：使用者說「客戶都不知道怎麼估預算」

**分類：** agent 流程（sbir-writer 的待補清單引導不夠具體）+ knowledge 內容

**修改方案：**
1. 在 `agents/sbir-writer.md` 的「客戶常卡住的地方」表格中，把「不知道怎麼估預算」的引導方式寫得更具體
2. 如果 `knowledge/guidelines/budget_preparation.md` 缺少白話的估算範例，在裡面補上

### 範例 2：使用者說「生技類的案子 reviewer 都沒看法規路徑」

**分類：** agent 流程（sbir-reviewer 的產業別審查）

**修改方案：**
1. 在 `agents/sbir-reviewer.md` 的「產業別審查校準」中，強調生技類必須檢查法規路徑
2. 確認 `knowledge/guidelines/industry_specific_guidance.md` 的生技章節有足夠的法規路徑說明

### 範例 3：使用者說「進件的時候應該先問客戶有沒有申請過 SBIR」

**分類：** agent 流程（sbir-pm 的階段 1）

**修改方案：**
1. 在 `agents/sbir-pm.md` 的「階段 1：資格篩選」中，加入「是否曾申請 SBIR」的檢查項目
2. 如果曾申請，詢問結果（通過 / 未通過 / 執行中），影響後續策略
