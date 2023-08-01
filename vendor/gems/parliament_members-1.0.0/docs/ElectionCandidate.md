# ParliamentMembers::ElectionCandidate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **party** | [**Party**](Party.md) |  | [optional] |
| **result_change** | **String** |  | [optional] |
| **rank_order** | **Integer** |  | [optional] |
| **votes** | **Integer** |  | [optional] |
| **vote_share** | **Float** |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::ElectionCandidate.new(
  member_id: null,
  name: null,
  party: null,
  result_change: null,
  rank_order: null,
  votes: null,
  vote_share: null
)
```

