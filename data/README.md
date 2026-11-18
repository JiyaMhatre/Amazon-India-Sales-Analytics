# Dataset Documentation

## Dataset: Amazon India Sale Report

This project uses a third-party circulated Amazon India sales report for analysing order activity, product performance, regional demand and fulfilment patterns.

### Dataset Overview

- Original records: 128,975
- Distinct Order IDs: 120,378
- Analysis period: 31 March 2022 – 29 June 2022
- Original columns: 24
- Cleaned analytical columns: 23

### Data Contents

The dataset includes:

- Order ID and order date
- Order status and fulfilment method
- Product category, style, SKU and size
- Quantity and recorded amount
- Shipping city, state and country
- Courier status and shipping service level
- Promotion information and B2B indicator

### Folder Structure

- `raw/` — Original source dataset.
- `processed/` — Cleaned and MySQL-ready datasets.

### Usage

The original and processed CSV files are maintained locally and are not included in this public repository.

To reproduce the analysis, obtain the dataset from an authorised source and place the original CSV in `data/raw/` using the filename expected by the Python notebook.

### Data Limitations

- Amount contains missing values.
- The dataset does not contain product costs or profit information.
- Order statuses identify outcomes but do not provide detailed cancellation or return reasons.
- The analysis covers only the period from March to June 2022.

This dataset is used strictly for educational and portfolio analysis.