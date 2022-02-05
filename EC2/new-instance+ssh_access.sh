aws ec2 create-key-pair --key-name <KeyName> --query 'KeyMaterial' --output-text > <KeyName.pem>
chmod 400 <KeyName>
aws ec2 describe-security-groups
#copy security-group-ids
#Recent Linux ami IDs
#Amazon Linux 2 AMI (HVM) - Kernel 5.10, SSD Volume Type - ami-0a8b4cd432b1c3063 (64-bit x86) / ami-0b6705f88b1f688c1 (64-bit Arm)
#Amazon Linux 2 AMI (HVM) - Kernel 4.14, SSD Volume Type - ami-01893222c83843146 (64-bit x86) / ami-0f6ef8dcbf23a4dc1 (64-bit Arm)
aws ec2 run-instances --image-id  <ami-id> --instance-type <instance-type> --security-group-ids <sg-ids> --key-name <key-name>
#Change the Default Ingress Security Rule In the Default Security Group
#By Default the Ingress Security Rule Does Not Allow Connections From Outside
#So We Have to Change The Rule To Access To The Security Group From the Internet Through Any Protocol
aws ec2 revoke-security-group-ingress --group-id <security-group-id> --security-group-rule-ids <security-group-rule-id>
aws ec2 authorize-security-group-ingress --group-id <security-group-id> --ip-permissions "IpProtocol"="-1","IpRanges"="[{CidrIp=0.0.0.0/0,Description=Inbound}]"
aws ec2 describe-instances
ssh -i "<KeyName.pem>" ec2-user@ec2-<X-X-X-X>.compute-1.amazonaws.com



