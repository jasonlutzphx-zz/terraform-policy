terraform {
  required_providers {
    aws = ">= 2.7.0"
  }
}
// Get the org root


resource "aws_organizations_policy" "example" {
  name    = "example2"
  content = file("${path.module}/policy.json")
}
resource "aws_organizations_policy_attachment" "example" {
  policy_id = aws_organizations_policy.example.id
  target_id = var.target_id
}
output "target_id" {
  value = var.target_id
}
