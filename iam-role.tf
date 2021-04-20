resource "aws_iam_role" "ec2_role" {
  name = "NBjenkins-ec2_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

  tags = {
    Name = "ec2-role"
  }
}



resource "aws_iam_instance_profile" "ec2_profile" {
  name = "NBec2_profile"
  role = "${aws_iam_role.ec2_role.name}"
}
