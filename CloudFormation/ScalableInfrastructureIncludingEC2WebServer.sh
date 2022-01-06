#!bin/bash
aws cloudformation create-stack --stack-name ScalableInfrastructureIncludingEC2WebServer --template-url https://github.com/awslabs/aws-cloudformation-templates/blob/2415d1dd34bdbf50e3b009879f6ba754a043afdf/aws/services/EC2/EC2InstanceWithSecurityGroupSample.yaml --capabilities CAPABILITY_IAM
