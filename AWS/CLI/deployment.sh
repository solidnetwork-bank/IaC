# validate template
aws cloudformation validate-template --template-body file://deployment_template.yml
# deploy template
aws cloudformation deploy --stack-name static-hosting-demo-stack --template-file deployment_template.yml --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
