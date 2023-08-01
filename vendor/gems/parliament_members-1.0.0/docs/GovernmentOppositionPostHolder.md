# ParliamentMembers::GovernmentOppositionPostHolder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member** | [**MemberItem**](MemberItem.md) |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **laying_minister_name** | **String** |  | [optional] |
| **is_paid** | **Boolean** |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::GovernmentOppositionPostHolder.new(
  member: null,
  start_date: null,
  end_date: null,
  laying_minister_name: null,
  is_paid: null
)
```

