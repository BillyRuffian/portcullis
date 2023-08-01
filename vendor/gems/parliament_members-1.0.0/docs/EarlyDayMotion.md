# ParliamentMembers::EarlyDayMotion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **number** | **String** |  | [optional] |
| **is_prayer** | **Boolean** |  | [optional] |
| **is_amendment** | **Boolean** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **date_tabled** | **Time** |  | [optional] |
| **sponsors_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::EarlyDayMotion.new(
  title: null,
  number: null,
  is_prayer: null,
  is_amendment: null,
  id: null,
  date_tabled: null,
  sponsors_count: null
)
```

