# ParliamentMembers::Constituency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **current_representation** | [**ConstituencyRepresentation**](ConstituencyRepresentation.md) |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::Constituency.new(
  id: null,
  name: null,
  start_date: null,
  end_date: null,
  current_representation: null
)
```

