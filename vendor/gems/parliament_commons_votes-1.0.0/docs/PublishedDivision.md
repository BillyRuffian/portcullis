# ParliamentCommonsVotes::PublishedDivision

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **division_id** | **Integer** |  | [optional] |
| **date** | **Time** |  | [optional] |
| **publication_updated** | **Time** |  | [optional] |
| **number** | **Integer** |  | [optional] |
| **is_deferred** | **Boolean** |  | [optional] |
| **evel_type** | **String** |  | [optional] |
| **evel_country** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **aye_count** | **Integer** |  | [optional] |
| **no_count** | **Integer** |  | [optional] |
| **double_majority_aye_count** | **Integer** |  | [optional] |
| **double_majority_no_count** | **Integer** |  | [optional] |
| **aye_tellers** | [**Array&lt;RecordedMember&gt;**](RecordedMember.md) |  | [optional] |
| **no_tellers** | [**Array&lt;RecordedMember&gt;**](RecordedMember.md) |  | [optional] |
| **ayes** | [**Array&lt;RecordedMember&gt;**](RecordedMember.md) |  | [optional] |
| **noes** | [**Array&lt;RecordedMember&gt;**](RecordedMember.md) |  | [optional] |
| **friendly_description** | **String** |  | [optional] |
| **friendly_title** | **String** |  | [optional] |
| **no_vote_recorded** | [**Array&lt;RecordedMember&gt;**](RecordedMember.md) |  | [optional] |
| **remote_voting_start** | **Time** |  | [optional] |
| **remote_voting_end** | **Time** |  | [optional] |

## Example

```ruby
require 'parliament_commons_votes'

instance = ParliamentCommonsVotes::PublishedDivision.new(
  division_id: null,
  date: null,
  publication_updated: null,
  number: null,
  is_deferred: null,
  evel_type: null,
  evel_country: null,
  title: null,
  aye_count: null,
  no_count: null,
  double_majority_aye_count: null,
  double_majority_no_count: null,
  aye_tellers: null,
  no_tellers: null,
  ayes: null,
  noes: null,
  friendly_description: null,
  friendly_title: null,
  no_vote_recorded: null,
  remote_voting_start: null,
  remote_voting_end: null
)
```

