# Add IAM permissions
The IAM user you’re using for static site hosting will need some permissions attached, to access the CloudFront service.
Here is the list of them:
- CreateDistribution
- UpdateDistribution
- DeleteDistribution
- GetDistribution
- TagResource
- CreateOriginAccessControl
- UpdateOriginAccessControl
- DeleteOriginAccessControl
- ListOriginAccessControls
- GetOriginAccessControl
- GetOriginAccessControlConfig

Go to **AWS console -> IAM**, and add the above-listed policies to the respective IAM user you're using for hosting the site.

Also, check that the IAM user has permission to access S3 and CloudFormation services.
