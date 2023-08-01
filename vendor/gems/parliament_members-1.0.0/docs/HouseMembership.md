# ParliamentMembers::HouseMembership

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **membership_from** | **String** |  | [optional] |
| **membership_from_id** | **Integer** |  | [optional] |
| **house** | [**House**](House.md) |  | [optional] |
| **membership_start_date** | **Time** |  | [optional] |
| **membership_end_date** | **Time** |  | [optional] |
| **membership_end_reason** | **String** |  | [optional] |
| **membership_end_reason_notes** | **String** |  | [optional] |
| **membership_end_reason_id** | **Integer** |  | [optional] |
| **membership_status** | [**HouseMembershipStatus**](HouseMembershipStatus.md) |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::HouseMembership.new(
  membership_from: null,
  membership_from_id: null,
  house: null,
  membership_start_date: null,
  membership_end_date: null,
  membership_end_reason: null,
  membership_end_reason_notes: null,
  membership_end_reason_id: null,
  membership_status: null
)
```

