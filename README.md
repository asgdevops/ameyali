# :notebook: AMEYALI Notebook Store

This is an example about a deploying a simple Web Shop Application using the Cloud Computing and DevOps technologies.

By [Antonio Salazar](antonio.salazar.devops@gmail.com), October 6th, 2022.

# :bookmark_tabs: Table of Contents
## Goal
- Build a multicloud e-commerce application example.
- Explode the DevOps tools to automate the application deployment process:
  - **Terraform** to build the multicloud infrastructure.
  - **Kubernetes** integrated with **Docker** to deploy the application service.
  - **MySQL** to store the application's data.
  - **Python** to build the application functionality.
  - **Bash** shell scripting to support additional automated tasks.


## :clipboard: Application deployment process summary
### :small_blue_diamond: Step 1
- [Create a new AWS free tier account](docs/aws_free_tier_account/README.md).
- [Create a new GCP free account](docs/gcp_account/README.md).

### :small_blue_diamond: Step 2
- Use Terraform to implement Infrastructure as a Code (IaC) to build:
  - AWS S3 Bucket.
  - GCP GKE Kubernetes Cluster.
  - GCP MySQL Database.

### :small_blue_diamond: Step 3
- Use Kubernetes scripts to deploy ameyali-notebookstore application
  - database
  - application

# :page_facing_up: Process
- Work in progress...

# :scroll: Scripts
## BASH
- [aws_set_credentials.sh](scripts/bash/aws_set_credentials.sh)
- [gcp_set_project.sh](scripts/bash/gcp_set_project.sh)

## Terraform
- [aws_variables.tf](scripts/terraform/aws_variables.tf)
- [gcp_variables.tf](scripts/terraform/gcp_variables.tf)
- [main.tf](scripts/terraform/main.tf)
- [tcb_aws_storage.tf](scripts/terraform/tcb_aws_storage.tf)
- [tcb_gcp_database.tf](scripts/terraform/tcb_gcp_database.tf)


# :books: References
- :link: [TBD]()
