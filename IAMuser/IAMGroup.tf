provider "aws" {
  region = "ap-south-1"
}


# Create Multiple Users


resource "aws_iam_user" "users" {
  for_each = toset([
    "dev-user1",
    "dev-user2",
    "dev-user3"
  ])

  name = each.value
}

# Create IAM Group


resource "aws_iam_group" "dev_group" {
  name = "developers-group"
}


# Attach EC2 Full Access Policy To Group


resource "aws_iam_group_policy_attachment" "ec2_access" {
  group      = aws_iam_group.dev_group.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}


# Add Users To Group


resource "aws_iam_group_membership" "dev_membership" {
  name = "developers-membership"

  users = [
    for user in aws_iam_user.users :
    user.name
  ]

  group = aws_iam_group.dev_group.name
}