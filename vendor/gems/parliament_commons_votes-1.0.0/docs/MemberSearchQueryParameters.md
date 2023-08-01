# ParliamentCommonsVotes::MemberSearchQueryParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **Integer** | Id number of a Member whose voting records are to be returned |  |
| **skip** | **Integer** | The number of records to skip. Default is 0 | [optional] |
| **take** | **Integer** | The number of records to return per page. Default is 25 | [optional] |
| **search_term** | **String** | Divisions containing search term within title or number | [optional] |
| **include_when_member_was_teller** | **Boolean** | Divisions where member was a teller as well as if they actually voted | [optional] |
| **start_date** | **Time** | Divisions where division date in one or after date provided. Date format is yyyy-MM-dd | [optional] |
| **end_date** | **Time** | Divisions where division date in one or before date provided. Date format is yyyy-MM-dd | [optional] |
| **division_number** | **Integer** | Division Number - as specified by the House, unique within a session. This is different to the division id which uniquely identifies a division in this system and is passed to the GET division endpoint | [optional] |

## Example

```ruby
require 'parliament_commons_votes'

instance = ParliamentCommonsVotes::MemberSearchQueryParameters.new(
  member_id: null,
  skip: null,
  take: null,
  search_term: null,
  include_when_member_was_teller: null,
  start_date: null,
  end_date: null,
  division_number: null
)
```

