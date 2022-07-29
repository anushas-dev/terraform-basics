resource "aws_dynamodb_table" "demo_user_data" {
  name           = "userdata"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "UserId"
  attribute {
    name = "UserId"
    type = "N"
  }
}
