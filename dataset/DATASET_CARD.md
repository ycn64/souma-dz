# Algerian Used-Car Listings Dataset

A dataset of used-car listings collected from an Algerian online market [OuedKniss](https://www.ouedkniss.com/) for research and machine-learning experiments in vehicle price
estimation.

The dataset contains 55,192 listings covering 813 car models, collected
between October 3 and October 5, 2026.

> **Target:** `price_da` seller asking price in Algerian dinars (DA).
> This is an asking price, not the final sale price.

---

## Dataset

| Property | Value |
|---|---:|
| Listings | 55,192 |
| Car models | 813 |
| Collection period | 2026-10-03 – 2026-10-05 |
| Target | `price_da` |
| Currency | Algerian Dinar (DA) |
| Train / validation / test | 80% / 10% / 10% |

### Features

| Column | Description |
|---|---|
| `id` | Salted hash of the original advertisement ID |
| `slug` | Model identifier used by the source |
| `model` | Vehicle model |
| `year` | Production year |
| `age_years` | Vehicle age at collection |
| `km` | Mileage in kilometres |
| `fuel` | Fuel type |
| `gearbox` | Gearbox/transmission |
| `engine` | Engine information |
| `trim` | Vehicle trim |
| `wilaya` | Wilaya/region of the listing |
| `price_da` | Asking price in DA |
| `price_type` | Fixed, negotiable, or offered |
| `seen_date` | Date the listing was collected |
| `refreshed_date` | Date the listing was last refreshed |
| `split` | `train`, `validation`, or `test` |

`engine` and `trim` are free-text fields and may contain inconsistent
representations.

---

## File Formats

The dataset is provided in two formats.

### CSV — `listings.csv.gz`

This is the easiest format to use and is recommended for users who simply
want to inspect or load the data.

The CSV is gzip-compressed to reduce its size, but can be read directly by
most data-analysis tools.

Python:

```python
import pandas as pd

df = pd.read_csv("listings.csv.gz")

print(df.head())
print(df.shape)
