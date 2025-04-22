resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "${var.my_env}dynamo-bootcamp-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }
}
