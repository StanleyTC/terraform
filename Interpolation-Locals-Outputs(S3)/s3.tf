#The interpolation will be used at line 4

resource "aws_s3_bucket" "my_bucket" { 
  bucket = "${random_pet.bucket.id}-${var.environment}"

    

  tags = local.common_tags #our tags are defined in locals.tf now
}

resource "aws_s3_bucket_object" "my_bucket"{
  bucket = aws_s3_bucket.my_bucket.bucket
  key = "config/ips.json" #go to file ips.json, do not worry, for these ips I just wrote any number, all >255
  source = "ips.json"
  etag = filemd5("ips.json")
}
# I could use ips.json in locals, because i used it 3 times,just writing there
/*
ip_filepath = "ips.json"
*/
# then, I would make an interpolation in key (line 13): 
/*
key = "config/${local.ip_filepath}"
*/
#then, we do not need to make an interpolation in line 14, there is no concatenation, just do source = local.ip_filepath
#as well in line 15   etag = filemd5(local.ip_filepath)