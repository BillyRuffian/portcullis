# ParliamentMembers::PartySeatCount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **male** | **Integer** |  | [optional] |
| **female** | **Integer** |  | [optional] |
| **non_binary** | **Integer** |  | [optional] |
| **total** | **Integer** |  | [optional] |
| **party** | [**Party**](Party.md) |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::PartySeatCount.new(
  male: null,
  female: null,
  non_binary: null,
  total: null,
  party: null
)
```

