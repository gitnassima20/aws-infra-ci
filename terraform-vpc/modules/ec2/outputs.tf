output "instances" {
  value = aws_instance.my_webserver.*.id
}

