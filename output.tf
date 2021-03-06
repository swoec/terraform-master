output "artifact_bucket" {
  value = "${aws_s3_bucket.artifact_bucket.id}"
  description = "S3 Bucket used for artifact storage"
}

output "cloudtrail_bucket_id" {
  value       = "${module.cloudtrail-s3-kms.s3_bucket}"
  description = "CloudTrail bucket ID"
  sensitive   = true
}

output "default_kms_key_arn" {
  value       = "${aws_kms_key.default.arn}"
  description = "Default KMS Key ARN"
  sensitive   = true
}

output "development_account_alias" {
  value     = "${aws_iam_account_alias.development.account_alias}"
  sensitive = true
}

output "development_account_id" {
  value     = "${aws_organizations_account.development.id}"
  sensitive = true
}

output "identity_account_alias" {
  value     = "${aws_iam_account_alias.identity.account_alias}"
  sensitive = true
}

output "identity_account_id" {
  value     = "${aws_organizations_account.identity.id}"
  sensitive = true
}

output "log_destination_arn" {
  value       = "${aws_cloudwatch_log_destination.log_destination.arn}"
  description = "The log destination where all logs should be sent"
}

output "master_account_id" {
  value     = "${var.master_account_id}"
  sensitive = true
}

output "master_account_alias" {
  value     = "${aws_iam_account_alias.master.account_alias}"
  sensitive = true
}

output "operations_account_id" {
  value     = "${aws_organizations_account.operations.id}"
  sensitive = true
}

output "operations_account_alias" {
  value     = "${aws_iam_account_alias.operations.account_alias}"
  sensitive = true
}

output "organization_cloudtrail_log_name" {
  value     = "${module.organization_cloudtrail.cloudwatch_log_group_name}"
}

output "production_account_alias" {
  value     = "${aws_iam_account_alias.production.account_alias}"
  sensitive = true
}

output "production_account_id" {
  value     = "${aws_organizations_account.production.id}"
  sensitive = true
}

output "terraform_bucket_id" {
  value       = "${module.terraform.s3_bucket}"
  description = "Terraform bucket ID"
}

output "terraform_dynamodb_table_name" {
  value       = "${module.terraform.dynamodb_table}"
  description = "Terraform Lock Table Name"
}

output "terraform_kms_key_arn" {
  value       = "${module.terraform.kms_key_arn}"
  description = "Terraform KMS Key ARN"
  sensitive   = true
}

output "travis_ci_access_key_id" {
  value       = "${aws_iam_access_key.travis_ci.id}"
  description = "The Travis CI User Access Key ID"
  sensitive   = true
}

output "travis_ci_secret_access_key" {
  value     = "${aws_iam_access_key.travis_ci.secret}"
  description = "The Travis CI User Secret Access Key"
  sensitive = true
}
