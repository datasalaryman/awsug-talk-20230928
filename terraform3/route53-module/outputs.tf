output "route53_records" {
    value = [
        for key, value in aws_route53_record.record: value.name
    ]
}