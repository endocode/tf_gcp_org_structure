# tf_gcp_org_structure
Organization Structure based on GCP best practices

This module creates a starndard folder structure starting from the organization node or the provded folder.
At the end of the tree Pojects are created that will contain the workloads for development & production stages.

If you need a different layout please simply fork and edit this repository

## Structure

```
ORG/
├── Department A/
├── Department B/
│    ├── Team 1/
│    └── Team 2/
│          └── Product 1/
│               ├── Product 1 - dev
│               └── Product 1 - prod    
└── Department C/
```
