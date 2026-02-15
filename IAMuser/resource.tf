resource "aws_iam_user" "example_user" {
  name = "karishma-user"
}


resource "aws_iam_user_login_profile" "example1" {
  user            = aws_iam_user.example_user.name
  password_length = 10
}

output "iam_user_password" {
  value     = aws_iam_user_login_profile.example.password
  sensitive = true
}

resource "aws_iam_user_login_profile" "example1" {
  user                    = aws_iam_user.example_user.name
  password                = "Temp@12345"
  password_reset_required = true
}