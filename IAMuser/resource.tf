# Create IAM User
resource "aws_iam_user" "myuser" {
  name = "karishma-login-user"
}

# Create Login Profile (Console Password)
resource "aws_iam_user_login_profile" "myprofile" {
  user                    = aws_iam_user.myuser.name
  password_length         = 12
  password_reset_required = true
}

# Give EC2 Full Access (optional but useful)
resource "aws_iam_user_policy_attachment" "ec2_access" {
  user       = aws_iam_user.myuser.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

# Output Password
output "login_password" {
  value     = aws_iam_user_login_profile.myprofile.password
  sensitive = true
}
