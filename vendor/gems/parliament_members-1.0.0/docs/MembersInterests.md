# ParliamentMembers::MembersInterests

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member** | [**Member**](Member.md) |  | [optional] |
| **interest_categories** | [**Array&lt;RegisteredInterestCategory&gt;**](RegisteredInterestCategory.md) |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::MembersInterests.new(
  member: null,
  interest_categories: null
)
```

