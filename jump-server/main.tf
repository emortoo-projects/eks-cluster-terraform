resource "aws_instance" "ec2-instance" {
  ami             = data.aws_ami.ami.image_id 
  key_name        = var.key_pair  
  instance_type   = var.instance_type_medium
  subnet_id       = var.subnet_id   
  iam_instance_profile = aws_iam_instance_profile.instance-profile.name
  vpc_security_group_ids = [var.ec2-sg]
  user_data       = templatefile("../jump-server/install-tools.sh", {})
  monitoring      = true

  root_block_device {
    volume_size = 30
  }
         
  tags = {
    Name = var.instance_name
  }
}


resource "aws_iam_instance_profile" "instance-profile" {
  name = "Jumper-server-profile"
  role = aws_iam_role.iam-role.name
}

resource "aws_iam_role" "iam-role" {
  name               = var.iam-role
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}