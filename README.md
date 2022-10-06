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


## Application deployment process summary
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

# Process
1. Download the code provided by [Intensive Cloud Computing Hands-On Training](https://ref.thecloudbootcamp.com/lp/137369/lp137369).

2. Access GCP Console and open Cloud Shell

    ![luxxy](images/luxxy_infra_10-56-08.png)

3. Upload accessKeys.csv and .zip hands-on file to GCP Cloud Shell

    ![luxxy](images/luxxy_infra_10-59-21.png)

4. Run the Hands-on files preparation below
    ```bash
    mkdir mission1_en
    mv mission1.zip mission1_en
    cd mission1_en
    unzip mission1.zip
    mv ~/accessKeys.csv mission1/en
    cd mission1/en
    chmod +x *.sh
    ```
    
    ![luxxy](images/luxxy_infra_11-04-18.png)

5. Run the following commands to prepare AWS and GCP environment. Authorize when asked.
    ```bash
    ./aws_set_credentials.sh accessKeys.csv
    ```

- Take the project Id from the GCP Console `My First Project` and execute the cpommand below:
    ```bash
    gcloud config set project <project_id>
    ```
    ![luxxy](images/luxxy_infra_11-20-09.png)

6. Execute the command below
    ```bash
    ./gcp_set_project.sh
    ```

7. Enable the Container Registry API, Kubernetes Engine API and the Cloud SQL API
    ```bash
    gcloud services enable containerregistry.googleapis.com 
    gcloud services enable container.googleapis.com 
    gcloud services enable sqladmin.googleapis.com 
    ```

    ![luxxy](images/luxxy_infra_11-29-54.png)


8. **IMPORTANT (DO NOT SKIP):**

- **Before executing the Terraform commands, open the Google Editor and update the file tcb_aws_storage.tf replacing the bucket name with an unique name (AWS requires unique bucket names).**
    - Open the tcb_aws_storage.tf using Google Editor
    - On line 4 of the file tcb_aws_storage.tf:
        - Replace xxxx with your name initials plus two random numbers:
        Example: luxxy-covid-testing-system-pdf-en-jr29

    ![luxxy](images/luxxy_infra_16-30-06.png)

9. Run the following commands to finish provision infrastructure steps
    ```bash
    cd ~/mission1_en/mission1/en/terraform/

    terraform init
    terraform plan
    terraform apply

    #	Type Yes and go ahead.
    ```

    ![luxxy](images/luxxy_infra_16-51-27.png)

    ![luxxy](images/luxxy_infra_16-52-57.png)

10. Once the CloudSQL instance is provisioned, access the Cloud SQL service
11. Click on your Cloud SQL instance.
12. On the left side, under Primary Instance, click on **Connections**.

13. Under **Instance IP assignment**, enable Private IP.
    - Click **Set up Connection** and **Use an automatically allocated IP range in your network**.
    - Click **Continue**
    - Click **Create Connection** and **wait a minutes.**

    ![luxxy](images/luxxy_infra_17-51-31.png)
    
    ![luxxy](images/luxxy_infra_17-51-43.png)

14. Under **Associated networking**, select "Default".
15. Under **Authorized Networks**, click "Add Network".
16. Under **New Network**, enter the following information:
    - **Name:** Public Access (For testing purposes only)
    - Network:** 0.0.0.0/0
    - Click **Done**.

    ![luxxy](images/luxxy_infra_17-58-22.png)

PS: For production environments, it is recommended to use only the Private Network for database access. 

⚠️  Never grant public network access (0.0.0.0/0) to production databases.

1.  After that, click on Save and wait to conclude the update.

# Scripts
## BASH
- [aws_set_credentials.sh](scripts/bash/aws_set_credentials.sh)
- [gcp_set_project.sh](scripts/bash/gcp_set_project.sh)

## Terraform
- [aws_variables.tf](scripts/terraform/aws_variables.tf)
- [gcp_variables.tf](scripts/terraform/gcp_variables.tf)
- [main.tf](scripts/terraform/main.tf)
- [tcb_aws_storage.tf](scripts/terraform/tcb_aws_storage.tf)
- [tcb_gcp_database.tf](scripts/terraform/tcb_gcp_database.tf)

# Example Screen-shots

## **AWS S3 Bucket**
![luxxy](images/luxxy_infra_18-15-50.png)

## **GCP Kubernetes Cluster**
![luxxy](images/luxxy_infra_18-15-19.png)

## **GCP MySQL Database**
![luxxy](images/luxxy_infra_18-15-38.png)


# :books: References
- :link: [Intensive Cloud Computing Hands-On Training](https://ref.thecloudbootcamp.com/lp/137369/lp137369)
