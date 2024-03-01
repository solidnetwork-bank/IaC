# Add IAM User

# create a IAM Policy
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


Go to **AWS console -> IAM**, and add the above-listed policies to the respective IAM user you're using for hosting the site.

Also, check that the IAM user has permission to access S3 and CloudFormation services.
