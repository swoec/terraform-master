output "account_alias" {
  value     = "${aws_iam_account_alias.alias.*.account_alias}"
}

output "admin_role_arn" {
  value     = "${aws_iam_role.admin_role.*.arn}"
}
