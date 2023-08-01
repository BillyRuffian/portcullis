# ParliamentMembers::RegisteredInterestCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **sort_order** | **Integer** |  | [optional] |
| **interests** | [**Array&lt;RegisteredInterest&gt;**](RegisteredInterest.md) |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::RegisteredInterestCategory.new(
  id: null,
  name: null,
  sort_order: null,
  interests: null
)
```

