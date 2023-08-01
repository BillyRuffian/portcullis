# ParliamentMembers::LordsByType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **life** | **Integer** |  | [optional] |
| **hereditary** | **Integer** |  | [optional] |
| **bishop** | **Integer** |  | [optional] |
| **total** | **Integer** |  | [optional] |
| **party** | [**Party**](Party.md) |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::LordsByType.new(
  life: null,
  hereditary: null,
  bishop: null,
  total: null,
  party: null
)
```

