# ParliamentMembers::GovernmentOppositionPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**PostType**](PostType.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **hansard_name** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **post_holders** | [**Array&lt;GovernmentOppositionPostHolder&gt;**](GovernmentOppositionPostHolder.md) |  | [optional] |
| **government_departments** | [**Array&lt;GovernmentDepartment&gt;**](GovernmentDepartment.md) |  | [optional] |
| **created_when** | **Time** |  | [optional] |
| **order** | **Integer** |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::GovernmentOppositionPost.new(
  type: null,
  name: null,
  hansard_name: null,
  id: null,
  post_holders: null,
  government_departments: null,
  created_when: null,
  order: null
)
```

