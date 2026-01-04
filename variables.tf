variable "key_id" {
  default = "arn:aws:kms:us-east-1:367241114876:key/b0eaa327-c037-47e6-93ed-78b8b08219b9"
}

variable "parameters" {
  default = {
    "dev.expense.rds.username" = "admin1"
    "dev.expense.rds.endpoint" = "dev-expense-rds.ca1a4y2cuoey.us-east-1.rds.amazonaws.com"
  }
}

## Note: In organizations we dont keep passwords in git repository at any cpst
variable "secrets" {
  default = {
    "dev.expense.rds.password" = "ExpenseApp123"
  }
}