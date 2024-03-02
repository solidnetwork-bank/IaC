# Add IAM User

# create an IAM Policy
Go to AWS console > IAM > Policies > Create policy

add these 12 Actions, we resources: specific: Any in this account 

**NOTE**: Be Sure this user is be allowed to Delete everything that create

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
- GetDistributionConfig
- GetOriginAccessControl
- GetOriginAccessControlConfig
### Tagging 
- TagResource
- UntagResource
### List
- ListOriginAccessControls
- ListDistributions

## S3
### Write
- CreateBucket
- DeleteBucket
- PutObject
- DeleteObject
### List
- ListBucket
- ListAllMyBuckets
### Read
- GetObject
- GetObjectVersion
### Permission Management
- DeleteBucketPolicy
- ObjectOwnerOverrideToBucketOwner
- PutBucketPolicy

## CloudFormation 
### Write
- CreateStack
- DeleteStack
- RollbackStack
- UpdateStack
- CreateChangeSet
- DeleteChangeSet
- ExecuteChangeSet
### Read
- ValidateTemplate
- DescribeChangeSet
- DescribeStackEvents
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
