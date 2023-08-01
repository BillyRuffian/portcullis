# ParliamentMembers::HouseMembershipStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status_is_active** | **Boolean** |  | [optional] |
| **status_description** | **String** |  | [optional] |
| **status_notes** | **String** |  | [optional] |
| **status_id** | **Integer** |  | [optional] |
| **status** | [**MemberStatus**](MemberStatus.md) |  | [optional] |
| **status_start_date** | **Time** |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::HouseMembershipStatus.new(
  status_is_active: null,
  status_description: null,
  status_notes: null,
  status_id: null,
  status: null,
  status_start_date: null
)
```

