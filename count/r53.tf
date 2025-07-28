resource "aws_route53_record" "expense" {
    count = 3
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}" # interpolation
  type    = "A"
  ttl     = 300
  records = [aws_instance.expense[count.index].private_ip] # list
  allow_overwrite = true
}

resource "aws_route53_record" "frontend-expense" {
  zone_id = var.zone_id
  name    = "${var.instances[2]}.${var.domain_name}" # interpolation
  type    = "A"
  ttl     = 300
  records = [aws_instance.expense[2].public_ip] # list
  allow_overwrite = true
}