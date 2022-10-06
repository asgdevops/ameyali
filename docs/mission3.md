# Steps to implement Hands-on Project - Mission 3

# Google Cloud Platform - Database Migration steps

- Connect to Google Cloud Shell
- Download the dump

```
cd
mkdir mission3_en
cd mission3_en
wget https://objectstorage.us-ashburn-1.oraclecloud.com/p/tvk3j_I8Uj0tTvPE2A2JDWCF_TZpmw0vDIiHkD8HKzGYxZsZtWXBfaURIZ4djW1k/n/idqfa2z2mift/b/eventos-thecloudbootcamp/o/ICP2/mission3.zip
unzip mission3.zip
```

- Connect to Cloud SQL MySQL database instance

```
mysql --host=<public_ip_address> --port=3306 -u app -p
```

- Import the dump on Cloud SQL

```
use dbcovidtesting;
source ~/mission3_en/mission3/en/db/db_dump.sql
```

- Check if the data got imported correctly

```
select * from records;
```

# Amazon Web Services - PDF Files Migration steps

- Connect to the AWS Cloud Shell
- Download the PDF files

```
cd
mkdir mission3_en
cd mission3_en
wget https://objectstorage.us-ashburn-1.oraclecloud.com/p/tvk3j_I8Uj0tTvPE2A2JDWCF_TZpmw0vDIiHkD8HKzGYxZsZtWXBfaURIZ4djW1k/n/idqfa2z2mift/b/eventos-thecloudbootcamp/o/ICP2/mission3.zip
unzip mission3.zip
```

- Sync PDF Files with your AWS S3 used for COVID-19 Testing Status System. **Replace the bucket name with yours.**

```
cd mission3/en/pdf_files
aws s3 sync . s3://luxxy-covid-testing-system-pdf-en-**xxxx**
```

- Test the application. Upon migrating the data and files, you should be able to see the entries  under “View Guest Results” page.

![Screen Shot 2022-02-07 at 4.41.37 PM.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/889cac8a-6a55-45a8-af35-c2fc65a445d2/Screen_Shot_2022-02-07_at_4.41.37_PM.png)

**Congratulations! You have migrated an "on-premises" application & database to a MultiCloud Architecture!**