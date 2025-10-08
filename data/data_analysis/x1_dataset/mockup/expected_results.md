# Expected Data Quality Results

## Dataset 1 (dataset1.csv) - 20 rows

### Column-by-Column Analysis

| Column | Type | Incorrect Type | NaN | Null/None | Empty String | Out of Range | Incorrect Format | Total Issues |
|--------|------|----------------|-----|-----------|--------------|--------------|------------------|--------------|
| **uid** | Numerical | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| **weather** | Categorical | 0 | 0 | 0 | 1 (row 13) | 0 | 0 | 1 |
| **colour** | Categorical | 0 | 0 | 0 | 1 (row 11) | 0 | 0 | 1 |
| **size** | Ordinal | 2 (rows 12, 13) | 0 | 0 | 0 | 0 | 0 | 2 |
| **grade** | Ordinal | 2 (rows 14, 15) | 0 | 0 | 1 (row 14) | 0 | 0 | 3 |
| **phone_number** | Interval | 1 (row 5) | 0 | 0 | 0 | 0 | 0 | 1 |
| **temperature** | Numerical | 2 (rows 6, 16) | 0 | 0 | 1 (row 16) | 0 | 0 | 3 |
| **entropy** | Numerical | 2 (rows 7, 17) | 0 | 0 | 1 (row 17) | 1 (row 15: 1.25) | 0 | 4 |
| **energy** | Numerical | 2 (rows 9, 18) | 0 | 0 | 1 (row 18) | 1 (row 15: 500.8) | 0 | 4 |
| **date** | Date | 2 (rows 12, 19) | 0 | 0 | 1 (row 12) | 2 (rows 15, 17) | 1 (row 8) | 6 |
| **time** | Time | 3 (rows 13, 14, 20) | 0 | 0 | 1 (row 14) | 1 (row 13) | 2 (rows 13, 20) | 7 |

### Summary for Dataset 1
- **Total Incorrect Type**: 16
- **Total NaN**: 0 (pandas will read empty cells as NaN)
- **Total Null/None**: 0
- **Total Empty String**: 7 (when read as strings before type conversion)
- **Total Value Out of Range**: 5
- **Total Incorrect Date/Time Format**: 3
- **Total Date/Time Out of Range**: 3

---

## Dataset 2 (dataset2.csv) - 15 rows

### Column-by-Column Analysis

| Column | Type | Incorrect Type | NaN | Null/None | Empty String | Out of Range | Incorrect Format | Total Issues |
|--------|------|----------------|-----|-----------|--------------|--------------|------------------|--------------|
| **uid** | Numerical | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| **flavour** | Categorical | 0 | 0 | 0 | 1 (row 10) | 0 | 0 | 1 |
| **position** | Ordinal | 1 (row 11) | 0 | 0 | 1 (row 20) | 0 | 0 | 2 |
| **volume** | Numerical | 2 (rows 8, 14) | 0 | 0 | 2 (rows 8, 14) | 0 | 0 | 4 |
| **height** | Numerical | 2 (rows 9, 18) | 0 | 0 | 1 (row 9) | 1 (row 18: -5.2) | 0 | 4 |
| **birthday** | DateTime | 3 (rows 11, 14, 19) | 0 | 0 | 1 (row 11) | 1 (row 15: 1800) | 2 (rows 12, 20) | 7 |

### Summary for Dataset 2
- **Total Incorrect Type**: 8
- **Total NaN**: 0 (pandas will read empty cells as NaN)
- **Total Null/None**: 0
- **Total Empty String**: 6 (when read as strings before type conversion)
- **Total Value Out of Range**: 2
- **Total Incorrect DateTime Format**: 2
- **Total DateTime Out of Range**: 1

---

## Notes on Pandas Behavior

1. **NaN vs Empty String**: When pandas reads a CSV with empty cells:
   - For numeric columns: empty cells become `NaN`
   - For string columns: empty cells become empty strings `''` or `NaN` depending on how it's read
   - With `pd.read_csv()` default behavior, empty cells typically become `NaN`

2. **Type Detection**: Pandas will attempt to infer types, so:
   - Columns with mixed types will be read as `object` dtype
   - Numeric columns with text will be read as `object` dtype
   - You'll need to use `pd.to_numeric()`, `pd.to_datetime()` with `errors='coerce'` to identify type mismatches

3. **Date/Time Ranges Considered Out of Range**:
   - Dates before 1900 or after 2050
   - Times with invalid values (hours > 23, minutes > 59, seconds > 59)

4. **Missing UIDs in Dataset 2**: UIDs 2, 4, 6, 13, 16, 17 from Dataset 1 are not present in Dataset 2 (partial join scenario)