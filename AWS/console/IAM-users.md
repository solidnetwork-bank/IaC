# Add IAM User

# create IAM Policies
Go to AWS console > IAM > Policies > Create policy

**NOTE**: Be Sure these policies allow the users to delete and list everything created by themself

**Description:** Permission required by CI CD CLI agents

## CloudFrontAWSCLIAgent
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

## S3AWSCLIAgent
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
- GetBucketPolicy
### Permission Management
- DeleteBucketPolicy
- ObjectOwnerOverrideToBucketOwner
- PutBucketPolicy

## CloudFormationAWSCLIAgent 
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
- ListStacks
- DescribeStacks
- ListChangeSets

# Create a User Group
- name **ci-agents**
- attach policy **CloudFrontAWSCLIAgent**
- attach policy **S3AWSCLIAgent**
- attach policy **CloudFormationAWSCLIAgent**

# Create a User
- name **aws-ci-agent**
- add user to the group **ci-agents**

# Create a Access Key
- CLI
- tag: **ci-agent**
- Storage keys on your keychain

# Run the IAM Policy Simulator
https://policysim.aws.amazon.com/home/index.jsp
