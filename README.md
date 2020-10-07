# terraform-azurerm-azurefirewall-nat-rule-collection
Create and manage a NAT Rule Collection in the Azure Firewall.



## Example

```Terraform

module "new_nat_rule" {
    source  = "andrewCluey/azurefirewall-nat-rule-collection/azurerm"
    version = "1.0.0"

    azure_fw_name           = "CORE-FW"
    fw_resource_group_name  = "CORE-FW-RG"
    nat_collection_name     = "WEB-APP-NAT"
    nat_collection_priority = "200"
    nat_collection_action   = "DNAT"

    nat_rule {
        nat_rule_name         = "Publish-FRONTEND-WEBSVR"
        description           = "Publish the FE Web Server over Port 4430."
        source_addresses      = ["145.23.23.23","10.0.0.0/8"]
        destination_ports     = ["4430"]
        destination_addresses = ["165.21.21.3"]
        translated_port       = ["443"]
        translated_address    = ["10.0.0.10"]
        protocols             = ["TCP"]
    }

}
          
```

