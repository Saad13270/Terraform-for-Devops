resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = var.aws_dynamodb_table
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }


  tags = {
    Name        = "dynamo-table"
    Environment = "production"
  }
}
