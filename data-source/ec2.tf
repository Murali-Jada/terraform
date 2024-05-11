resource "aws_instance" "db" {

    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-0285843a22a9327c8" ]
    instance_type = "t3.micro"
    tags = {
        Name = "data-source-practice"
    }
}