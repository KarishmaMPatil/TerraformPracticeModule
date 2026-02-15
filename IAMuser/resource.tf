resource "aws_iam_user" "example_user" {
  name = "karishma-user5"
}


resource "aws_iam_user_login_profile" "example1" {
  user            = aws_iam_user.example1_user.name
  password_length = 10
}

output "iam_user_password" {
  value     = aws_iam_user_login_profile.example1.password
  sensitive = true
}

