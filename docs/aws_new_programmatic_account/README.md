# :notes: AWS Create a programmatic user account

By [Antonio Salazar](mailto:antonio.salazar.cloudops@gmail.com), September 28th, 2022.

# :paw_prints: Steps

1. Open a browser and go to [AWS Console](https://aws.amazon.com/console/). 
2. Open the **Services** menu and select the **IAM** menu option.
    
    ![aws_pgr_acc](images/aws_pgr_acc_0.png)
    
3. On the left pane under **Access Management** click on **Users**.
    
    ![aws_pgr_acc](images/aws_pgr_acc_1.png)
    
4. Click on **Add users**
    
    ![aws_pgr_acc](images/aws_pgr_acc_2.png)
    
5. Action Items: 
    1. Type **User name**
    2. Check **Select AWS credential type**: **Access key - Programmatic access** 
    3. Click on **Next: Permissions**
    
    ![aws_pgr_acc](images/aws_pgr_acc_3.png)
    
6. Action Items
    1. Select the **Attach existing policies directly** permissions
    2. Search for the policies you are looking for. (in this example **AmazonS3Full Access**, *which not recommended in public production environments*)
    3. Click on **Next: Tags**
    
    ![aws_pgr_acc](images/aws_pgr_acc_4.png)
    
7. Leave the default values and click on **Next: Review**
    
    ![aws_pgr_acc](images/aws_pgr_acc_5.png)
    
8. Click on **Create user**
    
    ![aws_pgr_acc](images/aws_pgr_acc_6.png)
    
9. Click on **Download .csv**
    
    ![aws_pgr_acc](images/aws_pgr_acc_7.png)
    
10. Rename the downloaded .csv file. (in this example renamed to **accessKeys.csv**)
    
    ![aws_pgr_acc](images/aws_pgr_acc_8.png)
    
11. **Congratulations! You are all set!**

# :books: References
- :link: [Creating an IAM user in your AWS account](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html)
