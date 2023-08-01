# ParliamentCommonsVotes::DivisionGroupedByParty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **division_id** | **Integer** |  | [optional] |
| **number** | **Integer** |  | [optional] |
| **title** | **String** |  | [optional] |
| **date** | **Time** |  | [optional] |
| **aye_count** | **Integer** |  | [optional] |
| **no_count** | **Integer** |  | [optional] |
| **ayes** | [**Array&lt;PartyVoteResult&gt;**](PartyVoteResult.md) | Counts of all members who voted &#39;Aye&#39;, grouped by party | [optional] |
| **noes** | [**Array&lt;PartyVoteResult&gt;**](PartyVoteResult.md) | Counts of all members who voted &#39;Noe&#39;, grouped by party | [optional] |

## Example

```ruby
require 'parliament_commons_votes'

instance = ParliamentCommonsVotes::DivisionGroupedByParty.new(
  division_id: null,
  number: null,
  title: null,
  date: null,
  aye_count: null,
  no_count: null,
  ayes: null,
  noes: null
)
```

