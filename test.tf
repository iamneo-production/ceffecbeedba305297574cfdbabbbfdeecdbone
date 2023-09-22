terraform{
     required_providers {
       aws = {
           source = "hashicorp/aws"
        }
     }  
}
provider "aws"{
    region = "ap-southeast-1"
    access_key="AKIAQFEIM6BXY6AH3YLC"
    secret_key="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"
}
resource "aws_instance" "linux_server"{
    ami = "ami-072f48a9ed4f1bbda"
    instance_type = "t2.micro"
}
output "public_ip"{
    value = aws_instance.linux_server.public_ip
}
