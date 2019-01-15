# Azure resource name pattern |
# **Required** |
# ```
# "myresource"
# ```
variable "resource_name_pattern" {
    default = ""
}

# Azure network security group location. &nbsp;
# More details [here](https://azure.microsoft.com/en-us/global-infrastructure/regions/). |
# **Required** |
# ```
# "westeurope"
# ```
variable "nsg-location" {
    default = ""
}

# Azure resource group for NSG |
# **Required** |
# ```
# "myresourcegroup"
# ```
variable "nsg-resource_group" {
    default = ""
}

# Azure NSG custom rules. &nbsp;
# All fields are required, otherwise IT CAN HARM YOUR SECURITY! |
# **Optional** |
# ```
#  [
#    {
#      "name"                  : "myAwsomeRule", 
#      "priority"              : "666", 
#      "direction"             : "Inbound",
#      "access"                : "Allow",
#      "protocol"              : "UDP", 
#      "source_port_range"     : "1000-5000", 
#      "destination_port_range": "25-100",
#      "description"           : "myAwsomeDescription"
#    }
#  ]
# ```
variable "nsg-custom_rules" {
    default = []
}
