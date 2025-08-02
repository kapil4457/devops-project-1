provider "aws"{
  region = "ap-south-1"
}

resource "aws_s3_bucket" "devops-project-1-terraform-eks-state-bucket"{
  bucket = "devops-project-1-terraform-eks-state-bucket"
  lifecycle{
    prevent_destroy = false
  }
}


resource "aws_dynamodb_table" "devops-project-1-terraform-eks-state-locks"{
  name = "devops-project-1-terraform-eks-state-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute{
    name = "LockID"
    type = "S"
  }
}