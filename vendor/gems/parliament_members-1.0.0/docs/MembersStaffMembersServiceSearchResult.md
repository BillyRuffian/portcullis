# ParliamentMembers::MembersStaffMembersServiceSearchResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;MembersStaffItem&gt;**](MembersStaffItem.md) |  | [optional] |
| **total_results** | **Integer** |  | [optional] |
| **result_context** | **String** |  | [optional] |
| **skip** | **Integer** |  | [optional] |
| **take** | **Integer** |  | [optional] |
| **links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::MembersStaffMembersServiceSearchResult.new(
  items: null,
  total_results: null,
  result_context: null,
  skip: null,
  take: null,
  links: null
)
```

