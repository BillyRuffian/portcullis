# ParliamentMembers::MemberName

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **name_list_as** | **String** |  | [optional] |
| **name_display_as** | **String** |  | [optional] |
| **name_full_title** | **String** |  | [optional] |
| **name_address_as** | **String** |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::MemberName.new(
  start_date: null,
  end_date: null,
  name_list_as: null,
  name_display_as: null,
  name_full_title: null,
  name_address_as: null
)
```

