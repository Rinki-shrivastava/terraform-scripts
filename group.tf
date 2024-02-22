# create group
# resource "aws_iam_group" "developers" {
#   name = var.aws_iam_group-developers-name[2]
# }
# # add multiple members in group
# resource "aws_iam_group_membership" "developers" {
#   name = "developers"

#   users = [
#     aws_iam_user.tf1.name,
#     aws_iam_user.tf2.name,
#     aws_iam_user.tf3.name,
#   ]

#   group = aws_iam_group.developers.name
# }
