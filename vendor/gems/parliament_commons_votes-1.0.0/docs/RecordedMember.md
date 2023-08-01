# ParliamentCommonsVotes::RecordedMember

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **party** | **String** |  | [optional] |
| **sub_party** | **String** |  | [optional] |
| **party_colour** | **String** |  | [optional] |
| **party_abbreviation** | **String** |  | [optional] |
| **member_from** | **String** |  | [optional] |
| **list_as** | **String** |  | [optional] |
| **proxy_name** | **String** |  | [optional] |

## Example

```ruby
require 'parliament_commons_votes'

instance = ParliamentCommonsVotes::RecordedMember.new(
  member_id: null,
  name: null,
  party: null,
  sub_party: null,
  party_colour: null,
  party_abbreviation: null,
  member_from: null,
  list_as: null,
  proxy_name: null
)
```

