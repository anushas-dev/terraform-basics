resource "aws_iam_user" "users" {
  name  = var.demo-users[count.index]
  count = length(var.demo-users)
}
