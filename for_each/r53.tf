resource "aws_route53_record" "expense" {
   for_each = aws_instance.this
  zone_id = var.zone_id
  name    = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"  # interpolation
  type    = "A"
  ttl     = 300
  records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip] # list
  allow_overwrite = true
}
