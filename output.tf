output "id" {
  description = "List of IDs of instances"
  value       = aws_instance.this.aws_instance.web.id
}
