# ParliamentMembers::AnsweringBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **short_name** | **String** |  | [optional] |
| **target** | **String** |  | [optional] |
| **department** | [**GovernmentDepartment**](GovernmentDepartment.md) |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::AnsweringBody.new(
  id: null,
  name: null,
  short_name: null,
  target: null,
  department: null
)
```

