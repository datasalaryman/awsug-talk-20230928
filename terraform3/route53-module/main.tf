provider "aws" {
  region = var.region
  # profile = "personal"
}

locals {
  records_json = jsondecode(file(var.record_file))
}

resource "aws_route53_zone" "zone" {
  name = var.zone_domain
}

resource "aws_route53_record" "record" {
  for_each = {for record in local.records_json: join("", [record["Name"], "-", record["Type"]]) => record}
  zone_id = aws_route53_zone.zone.zone_id
  name    = each.value["Name"]
  type    = each.value["Type"]
  ttl     = lookup(each.value, "TTL", null)

  dynamic alias {
    for_each = lookup(each.value, "AliasTarget", null) == null ? [] : [each.value["AliasTarget"]]
    content {
        name                   = alias.value["DNSName"]
        zone_id                = alias.value["HostedZoneId"]
        evaluate_target_health = alias.value["EvaluateTargetHealth"]
    }
  }

  records = lookup(each.value, "ResourceRecords", null) != null ? [for destination in each.value["ResourceRecords"]: destination["Value"]] : null
}