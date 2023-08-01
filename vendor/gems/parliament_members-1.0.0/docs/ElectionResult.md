# ParliamentMembers::ElectionResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result** | **String** |  | [optional] |
| **is_notional** | **Boolean** |  | [optional] |
| **electorate** | **Integer** |  | [optional] |
| **turnout** | **Integer** |  | [optional] |
| **majority** | **Integer** |  | [optional] |
| **winning_party** | [**Party**](Party.md) |  | [optional] |
| **election_title** | **String** |  | [optional] |
| **election_date** | **Time** |  | [optional] |
| **election_id** | **Integer** |  | [optional] |
| **is_general_election** | **Boolean** |  | [optional] |
| **constituency_name** | **String** |  | [optional] |
| **candidates** | [**Array&lt;ElectionCandidate&gt;**](ElectionCandidate.md) |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::ElectionResult.new(
  result: null,
  is_notional: null,
  electorate: null,
  turnout: null,
  majority: null,
  winning_party: null,
  election_title: null,
  election_date: null,
  election_id: null,
  is_general_election: null,
  constituency_name: null,
  candidates: null
)
```

