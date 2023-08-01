# ParliamentMembers::MemberParty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **party** | [**Party**](Party.md) |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::MemberParty.new(
  start_date: null,
  end_date: null,
  party: null
)
```

