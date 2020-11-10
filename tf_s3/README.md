# Terraform Module

1. Module has the below written capabilities
   - Versioning (Enable / Disable)
   - Lifecycle Policy (Enable / Disable) (After 30 days - S3 Standard-IA, After 60 Days - S3 Glacier and After 90 days - delete file)
   - Bucket ACL Policy is defined (private / public-read / public-read-write / aws-exec-read / authenticated-read / bucket-owner-read / bucket-owner-full-control / log-delivery-write)- Canned ACL (https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl)
   - Server Side Encryption is also enabled

2. The AWS IAM Policy is right now hard coded and basic. It could be further engineered depending on circumstances.

3. Lifecycle Policy could be further engineered to give users ability to change days for transition and what to transition to.

4. CORS, Cross-Region Replication, Access Logging and static web-site hosting is not a part of this solution. Future Improvement.
