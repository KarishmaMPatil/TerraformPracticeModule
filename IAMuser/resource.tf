resource "aws_iam_user" "example_user" {
  name = "karishma-user"
}


resource "aws_iam_user_login_profile" "example" {
  user            = aws_iam_user.example_user.name
  password_length = 10
}