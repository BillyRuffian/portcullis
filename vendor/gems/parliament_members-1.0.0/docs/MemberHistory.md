# ParliamentMembers::MemberHistory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **thumbnail_url** | **String** |  | [optional] |
| **party_history** | [**Array&lt;MemberParty&gt;**](MemberParty.md) |  | [optional] |
| **house_membership_history** | [**Array&lt;HouseMembership&gt;**](HouseMembership.md) |  | [optional] |
| **name_history** | [**Array&lt;MemberName&gt;**](MemberName.md) |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::MemberHistory.new(
  id: null,
  thumbnail_url: null,
  party_history: null,
  house_membership_history: null,
  name_history: null
)
```

