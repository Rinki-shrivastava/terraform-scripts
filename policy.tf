# # Inline policy
# resource "aws_iam_user_policy" "tf1" {
#   name = "tom"
#   user = aws_iam_user.tf1.name
#   policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = [
#           "ec2:Describe*",
#         ]
#         Effect   = "Allow"
#         Resource = "*"
#       },
#     ]
#   })
# }
