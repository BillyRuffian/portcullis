# ParliamentMembers::Party

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **abbreviation** | **String** |  | [optional] |
| **background_colour** | **String** |  | [optional] |
| **foreground_colour** | **String** |  | [optional] |
| **is_lords_main_party** | **Boolean** |  | [optional] |
| **is_lords_spiritual_party** | **Boolean** |  | [optional] |
| **government_type** | [**GovernmentType**](GovernmentType.md) |  | [optional] |
| **is_independent_party** | **Boolean** |  | [optional][readonly] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::Party.new(
  id: null,
  name: null,
  abbreviation: null,
  background_colour: null,
  foreground_colour: null,
  is_lords_main_party: null,
  is_lords_spiritual_party: null,
  government_type: null,
  is_independent_party: null
)
```

