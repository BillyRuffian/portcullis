# ParliamentMembers::Member

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name_list_as** | **String** |  | [optional] |
| **name_display_as** | **String** |  | [optional] |
| **name_full_title** | **String** |  | [optional] |
| **name_address_as** | **String** |  | [optional] |
| **latest_party** | [**Party**](Party.md) |  | [optional] |
| **gender** | **String** |  | [optional] |
| **latest_house_membership** | [**HouseMembership**](HouseMembership.md) |  | [optional] |
| **thumbnail_url** | **String** |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::Member.new(
  id: null,
  name_list_as: null,
  name_display_as: null,
  name_full_title: null,
  name_address_as: null,
  latest_party: null,
  gender: null,
  latest_house_membership: null,
  thumbnail_url: null
)
```

