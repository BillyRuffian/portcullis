# ParliamentCommonsVotes::MemberVotingRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **Integer** |  | [optional] |
| **member_voted_aye** | **Boolean** |  | [optional] |
| **member_was_teller** | **Boolean** |  | [optional] |
| **published_division** | [**PublishedDivision**](PublishedDivision.md) |  | [optional] |

## Example

```ruby
require 'parliament_commons_votes'

instance = ParliamentCommonsVotes::MemberVotingRecord.new(
  member_id: null,
  member_voted_aye: null,
  member_was_teller: null,
  published_division: null
)
```

