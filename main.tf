resource "azurerm_firewall_nat_rule_collection" "nat_rule" {
  name                = var.nat_collection_name
  azure_firewall_name = var.azure_fw_name
  resource_group_name = var.fw_resource_group_name
  priority            = var.nat_collection_priority
  action              = var.nat_collection_action

  dynamic "rule" {
      for_each = var.nat_rule
      content {
          name                  = lookup(rule.value, "nat_rule_name", null)
          description           = lookup(rule.value, "description", null)
          source_addresses      = lookup(rule.value, "source_addresses", null)
          destination_ports     = lookup(rule.value, "destination_ports", null)
          destination_addresses = lookup(rule.value, "destination_addresses", null)
          translated_port       = lookup(rule.value, "translated_port", null)
          translated_address    = lookup(rule.value, "translated_address", null)
          protocols             = lookup(rule.value, "protocols", null)
      }
  }
}