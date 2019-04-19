# aws-account-setup

This Terraform module setups a new created AWS account with the following items:
* Account Alias
* Assume Role from another AWS account
* CloudWatch Log Retention Period Lambda

## Usage
```
module "development" {
  source = "./modules/aws-account-setup"
  account_alias = "org-development"
  account_id    = "${var.identity_account}"
  providers = {
    aws = "aws.development"
  }
}
```

## Inputs
Name | Description | Type | Default | Required
---- | ----------- | ---- | ------- | --------
account_alias | The AWS account alias name to attach to the provider | string | - | yes
account_id | The account id where users will be assume the role from | string | - | no
admin_role_arn | The ARN of the managed policy to attach to the admin role | string | arn:aws:iam::aws:policy/AdministratorAccess | no

## Outputs
