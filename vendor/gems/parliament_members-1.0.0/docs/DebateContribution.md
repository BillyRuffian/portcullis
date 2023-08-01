# ParliamentMembers::DebateContribution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_contributions** | **Integer** |  | [optional] |
| **debate_title** | **String** |  | [optional] |
| **debate_id** | **Integer** |  | [optional] |
| **debate_website_id** | **String** |  | [optional] |
| **sitting_date** | **Time** |  | [optional] |
| **section** | **String** |  | [optional] |
| **house** | **String** |  | [optional] |
| **first_timecode** | **Time** |  | [optional] |
| **speech_count** | **Integer** |  | [optional] |
| **question_count** | **Integer** |  | [optional] |
| **supplementary_question_count** | **Integer** |  | [optional] |
| **intervention_count** | **Integer** |  | [optional] |
| **answer_count** | **Integer** |  | [optional] |
| **points_of_order_count** | **Integer** |  | [optional] |
| **statements_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::DebateContribution.new(
  total_contributions: null,
  debate_title: null,
  debate_id: null,
  debate_website_id: null,
  sitting_date: null,
  section: null,
  house: null,
  first_timecode: null,
  speech_count: null,
  question_count: null,
  supplementary_question_count: null,
  intervention_count: null,
  answer_count: null,
  points_of_order_count: null,
  statements_count: null
)
```

