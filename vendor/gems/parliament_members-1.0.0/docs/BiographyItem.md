# ParliamentMembers::BiographyItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **house** | [**House**](House.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **additional_info** | **String** |  | [optional] |
| **additional_info_link** | **String** |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::BiographyItem.new(
  house: null,
  name: null,
  id: null,
  start_date: null,
  end_date: null,
  additional_info: null,
  additional_info_link: null
)
```

