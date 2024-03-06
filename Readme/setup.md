![AWS GitHub](https://github.com/solidnetwork-bank/IaC/blob/main/Readme/AWS-GitHub.png)

# Setting Up CloudFormation IAM User for GitHub Actions
In CloudFormation Stack console Run the following templates:
- [AWS/CloudFormation/stacks/IAM/T1-ManagedPolicy-CloudFront-CloudFrontIaCAgent.json](https://github.com/solidnetwork-bank/IaC/blob/main/AWS/CloudFormation/stacks/IAM/T1-ManagedPolicy-CloudFront-CloudFrontIaCAgent.json)
- [AWS/CloudFormation/stacks/IAM/T2-ManagedPolicy-S3-S3IaCAgent.json](https://github.com/solidnetwork-bank/IaC/blob/main/AWS/CloudFormation/stacks/IAM/T2-ManagedPolicy-S3-S3IaCAgent.json)
- [AWS/CloudFormation/stacks/IAM/T3-ManagedPolicy-CloudFormation-CloudFormationIaCAgent.json](https://github.com/solidnetwork-bank/IaC/blob/main/AWS/CloudFormation/stacks/IAM/T3-ManagedPolicy-CloudFormation-CloudFormationIaCAgent.json)
- [AWS/CloudFormation/stacks/IAM/T4-Group-IaCAgents.json](https://github.com/solidnetwork-bank/IaC/blob/main/AWS/CloudFormation/stacks/IAM/T4-Group-IaCAgents.json)
- [AWS/CloudFormation/stacks/IAM/T5-User-IaCAgent.json](https://github.com/solidnetwork-bank/IaC/blob/main/AWS/CloudFormation/stacks/IAM/T5-User-IaCAgent.json)

## Access Key ID and Access Key Secret
In AWS console > IAM > Users > IaCAgent > Security Credentials > Access keys > Create access Key

Store both keys in a password manager 
- AWS Access Key ID
- AWS Access Key Secret

## Add AWS Credentials in GitHub Repo 
**IaCAgent** IAM User is only for IaC deployments.

1. In GitHub, go to “Settings” of the GitHub Repo
2. Click “Secrets and variables”
3. Actions
4. Repository secrets
5. Click “New repository secret”
6. Enter the Name & Value for the Secret.
7. ACCESS_KEY = AWS Access Key ID
8. ACCESS_KEY_SECRET = AWS Access Key Secret
9. CAPABILITIES = any capability needed
10. ANY_OTHER_SECRET_NEEDEED

## Writing the Job Sequence in GitHub Action
- Add a new file in your repo: .github/workflows/yourfile.yml
- **name:** action name. Keep it simple. Lower case.
- **on:** It let us define the trigger point of when the job run.
- **workflow_dispatch:** Allow us to manually trigger to workflow to run again from Actions Tab. To display this button, the code must be merge to main or default branch.
- **inputs:** Display a form with inputs when Actions are running manually.
- **jobs:** Define the job to run for this particular action. You could define more than 1 job here.
- **steps:** Define how to deploy the CloudFormation Stack.
  - Firstly, we checkout the code using **actions/checkout**.
  - Secondly, we use **aws-actions/configure-aws-credentials** to set the Access Key ID and Access Key Secret that we added in the Github Secret.
  - Lastly, we use **aws-actions/aws-cloudformation-github-deploy** to deploy to AWS CloudFormation.

## Run GitHub Actions
- In GitHub, go to Actions > Workflows > Cloudformation > Run workflow.
- Choose a branch to deploy.
- Input AWS Region.
- File path: repo template path to deploy in CloudFormation.
- Stack name: stack name to be created on CloudFormation.
