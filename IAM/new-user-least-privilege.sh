aws iam create-user --user <username>
aws iam create-access-key --user-name <username>
aws iam list-policies | grep <service-keyword>
aws iam attach-user-policy --user-name  --policy-arn <copy and paste the arn from the output of the last outcome>
##If the User's Access keys are lost type the following command:
aws iam list-access-keys --user-name <user-name>
