# Define the S3 bucket name
variable "bucket_name" {
  default = "my-multiregion-bucket"
}

# Define the AWS regions where the bucket will be created
variable "aws_regions" {
  default = ["us-east-1", "us-west-2", "eu-west-1"]
}

# Create the S3 bucket in each region
resource "aws_s3_bucket" "multiregion_bucket" {
  count = length(var.aws_regions)

  bucket = "${var.bucket_name}-${var.aws_regions[count.index]}"
  acl    = "private"

  region = "${var.aws_regions[count.index]}"
}
