## Inputs

| Name | Description | ParameterType | Example | ValueType | Default |
|------|-------------|----------|:----:|:-----:|
| nsg-custom\_rules | Azure NSG custom rules. &nbsp;All fields are required, otherwise IT CAN HARM YOUR SECURITY! |**Optional** |```[{"name"                  : "myAwsomeRule","priority"              : "666","direction"             : "Inbound","access"                : "Allow","protocol"              : "UDP","source_port_range"     : "1000-5000","destination_port_range": "25-100","description"           : "myAwsomeDescription"}]``` | list | `[]` |
| nsg-location | Azure network security group location. &nbsp;More details [here](https://azure.microsoft.com/en-us/global-infrastructure/regions/). |**Required** |```"westeurope"``` | string | `""` |
| nsg-resource\_group | Azure resource group for NSG |**Required** |```"myresourcegroup"``` | string | `""` |
| resource\_name\_pattern | Azure resource name pattern |**Required** |```"myresource"``` | string | `""` |

## Outputs

| Name | Description | Example |
|------|-------------|----------|
| nsg-id | Network Security Group id. | |
| nsg-name | Network Security Group name. | |

