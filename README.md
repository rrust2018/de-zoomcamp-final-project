This project implements a full-stack data pipeline using Google Cloud services and open-source tools. The workflow is as follows:

![Diagram](https://github.com/user-attachments/assets/64fd7884-a2ab-4c18-99be-d97d14ed6bc5)

**1. Data Source**

The original dataset is from Kaggle (https://www.kaggle.com/datasets/arashnic/book-recommendation-dataset).

The dataset was uploaded from Kaggle to GitHub for easier access and integration.

**2. Virtual Machine & Orchestration**

A Google Cloud Virtual Machine (VM) hosts the pipeline.

Kestra is set up on the VM using Docker as the orchestrator.

**3. Data Ingestion**

Kestra downloads the dataset from GitHub.

The raw data is uploaded to Google Cloud Storage (GCS).

**4. Data Warehousing**

From GCS, the data is loaded into Google BigQuery (BQ).

**5. Transformation**

dbt (data build tool) runs transformations directly on BigQuery to clean and model the data.

**6. Visualization**

The final, transformed datasets are visualized in Looker for insights and reporting.
