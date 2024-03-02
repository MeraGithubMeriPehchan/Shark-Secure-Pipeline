provider "aws" {
   secret_key = ""
   access_key = ""
   region = "us-east-1"
}

resource "aws_instance" "k8-M" {
        ami = "ami-0cd59ecaf368e5ccf"
        instance_type = "t2.medium"
        key_name = "jenkinskeypair"
        tags = {
                                
                Name = "KMASTER"
        }
}

resource "aws_instance" "k8-S1" {
        ami = "ami-0cd59ecaf368e5ccf"
        instance_type = "t2.medium"
        key_name = "jenkinskeypair"
        tags = {

                Name = "KSlave"
        }
}

