terraform{
     required_providers {
       aws = {
           source = "hashicorp/aws"
        }
     }  
}
provider "aws"{
    region = "Singapore"
    access_key=""
    secret_key=""
}
