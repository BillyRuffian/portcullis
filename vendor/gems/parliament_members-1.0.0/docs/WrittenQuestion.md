# ParliamentMembers::WrittenQuestion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **asking_member_id** | **Integer** |  | [optional] |
| **house** | [**House**](House.md) |  | [optional] |
| **member_has_interest** | **Boolean** |  | [optional] |
| **date_tabled** | **Time** |  | [optional] |
| **date_for_answer** | **Time** |  | [optional] |
| **uin** | **String** |  | [optional] |
| **question_text** | **String** |  | [optional] |
| **answering_body_id** | **Integer** |  | [optional] |
| **is_withdrawn** | **Boolean** |  | [optional] |
| **is_named_day** | **Boolean** |  | [optional] |
| **grouped_questions** | **Array&lt;String&gt;** |  | [optional] |
| **grouped_questions_dates** | [**Array&lt;GroupedQuestion&gt;**](GroupedQuestion.md) |  | [optional] |
| **answer_is_holding** | **Boolean** |  | [optional] |
| **answer_is_correction** | **Boolean** |  | [optional] |
| **answering_member_id** | **Integer** |  | [optional] |
| **correcting_member_id** | **Integer** |  | [optional] |
| **date_answered** | **Time** |  | [optional] |
| **answer_text** | **String** |  | [optional] |
| **attachment_count** | **Integer** |  | [optional] |
| **heading** | **String** |  | [optional] |
| **answering_member** | [**Member**](Member.md) |  | [optional] |
| **correcting_member** | [**Member**](Member.md) |  | [optional] |
| **answering_body** | [**AnsweringBody**](AnsweringBody.md) |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::WrittenQuestion.new(
  id: null,
  asking_member_id: null,
  house: null,
  member_has_interest: null,
  date_tabled: null,
  date_for_answer: null,
  uin: null,
  question_text: null,
  answering_body_id: null,
  is_withdrawn: null,
  is_named_day: null,
  grouped_questions: null,
  grouped_questions_dates: null,
  answer_is_holding: null,
  answer_is_correction: null,
  answering_member_id: null,
  correcting_member_id: null,
  date_answered: null,
  answer_text: null,
  attachment_count: null,
  heading: null,
  answering_member: null,
  correcting_member: null,
  answering_body: null
)
```

