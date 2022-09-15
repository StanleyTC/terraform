output "bucket_name"{
    value = aws_s3_bucket.my_bucket.bucket
}

output "bucket_arn" {
    value = aws_s3_bucket.my_bucket.arn
    description = ""
}

output "bucket_domain_name"{
    value = "${aws_s3_bucket.my_bucket.bucket_domain_name}/${aws_s3_bucket_object.my_bucket.key}"
    
}