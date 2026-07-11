output "public_ip" {
  value = aws_instance.cassandra.public_ip
}

output "public_dns" {
  value = aws_instance.cassandra.public_dns
}
