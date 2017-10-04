# Create an IAM role for the Web Servers.
resource "aws_iam_role" "jenkins_s3_role" {
    name = "jenkins_s3_role"
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
}

resource "aws_iam_instance_profile" "jenkins_master_instance_profile" {
    name = "jenkins_master_instance_profile"
    role = "jenkins_s3_role"
}

resource "aws_iam_role_policy" "jenkins_s3_iam_role_policy" {
  name = "jenkins_s3_iam_role_policy"
  role = "${aws_iam_role.jenkins_s3_role.id}"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": ["s3:ListBucket"],
      "Resource": ["arn:aws:s3:::evr-test"]
    },
    {
      "Effect": "Allow",
      "Action": [
        "s3:*"
      ],
      "Resource": ["arn:aws:s3:::evr-test/builds/*"]
    }
  ]
}
EOF
}
