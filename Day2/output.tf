output "public-ip-address" {
  value = aws_instance.example.associate_public_ip_address
}
output "valumes" {
  value = aws_instance.example.volume_tags
}