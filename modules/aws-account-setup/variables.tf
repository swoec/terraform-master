variable "account_alias" {
  type        = "string"
  description = "The account alias which is to be attached to the AWS account"
}

variable "account_id" {
  type        = "string"
  description = "The account id where users will be assume the role from"
}

variable "admin_role_arn" {
  type        = "string"
  description = "The ARN of the managed policy to attach to the admin role"
  default     = "arn:aws:iam::aws:policy/AdministratorAccess"
}
