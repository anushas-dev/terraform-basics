resource "aws_s3_bucket_object" "file-upload" {
    bucket = "pixar-studios-2020"
    key = "woody.jpg"
    source = "/root/woody.jpg"  
}