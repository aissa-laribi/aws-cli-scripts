aws iam create-user --user <username>
aws iam create-access-key --user-name <username> > <username>_credentials.txt
aws iam list-policies | grep <service-keyword>
aws iam attach-user-policy --user-name  --policy-arn <copy and paste the arn from the output of the last outcome>
##Check if the User's Access keys has been created:
aws iam list-access-keys --user-name <user-name>
