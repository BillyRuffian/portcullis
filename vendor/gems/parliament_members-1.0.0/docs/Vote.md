# ParliamentMembers::Vote

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **house** | [**House**](House.md) |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **in_affirmative_lobby** | **Boolean** |  | [optional] |
| **acted_as_teller** | **Boolean** |  | [optional] |
| **title** | **String** |  | [optional] |
| **date** | **Time** |  | [optional] |
| **division_number** | **Integer** |  | [optional] |
| **number_in_favour** | **Integer** |  | [optional] |
| **number_against** | **Integer** |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::Vote.new(
  house: null,
  id: null,
  in_affirmative_lobby: null,
  acted_as_teller: null,
  title: null,
  date: null,
  division_number: null,
  number_in_favour: null,
  number_against: null
)
```

