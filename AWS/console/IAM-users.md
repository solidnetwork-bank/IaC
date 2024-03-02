# Add IAM User

# create an IAM Policy
Go to AWS console > IAM > Policies > Create policy

add these 12 Actions, we resources: specific: Any in this account 
## CloudFront
### Write
- CreateDistribution
- UpdateDistribution
- DeleteDistribution
- CreateOriginAccessControl
- UpdateOriginAccessControl
- DeleteOriginAccessControl
### Read
- GetDistribution
- GetOriginAccessControl
- GetOriginAccessControlConfig
### All
- TagResource
### List
- ListOriginAccessControls

## S3
### Write
- CreateBucket
- PutObject
- DeleteObject
### List
- ListBucket
###
- GetObject
- GetObjectVersion

## CloudFormation 
### Write
- CreateStack
- CreateChangeSet
- DeleteChangeSet
- ExecuteChangeSet
### Read
- ValidateTemplate
- DescribeChangeSet
### List
- DescribeStacks
- ListChangeSets

- **name:** AWSCLIAgent
- **Description:** Permission required by CI CD CLI agents

# Create a User Group
- name **ci-agents**
- attach policy **AWSCLIAgent**

# Create a User
- name **aws-ci-agent**
- add user to the group **ci-agents**

# Create a Access Key
- CLI
- tag: **ci-agent**
- Storage keys on your keychain 
