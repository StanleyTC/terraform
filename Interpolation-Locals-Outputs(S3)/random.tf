resource "random_pet" "bucket"{ #what resource I'm using and the name i choose, in this case, bucket
    lenght = 5
}

#Now we will use our interpolation at our s3.tf