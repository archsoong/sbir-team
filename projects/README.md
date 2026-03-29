# SBIR Projects

每個 SBIR 專案一個資料夾，由 **sbir-pm** 在進件時自動建立。

## 資料夾結構

```
projects/
├── {公司名稱}/
│   ├── docs/            # 客戶 PDF、參考資料
│   └── drafts/          # 計畫書 markdown 草稿
```

## 使用方式

1. PM 向 sbir-pm 提交客戶資訊時，sbir-pm 會自動建立專案資料夾
2. PM 將客戶提供的 PDF 放進 `docs/`
3. sbir-writer 產出的計畫書草稿會存在 `drafts/`
