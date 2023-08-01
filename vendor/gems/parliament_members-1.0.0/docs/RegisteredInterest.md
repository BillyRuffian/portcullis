# ParliamentMembers::RegisteredInterest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **interest** | **String** |  | [optional] |
| **created_when** | **Time** |  | [optional] |
| **last_amended_when** | **Time** |  | [optional] |
| **deleted_when** | **Time** |  | [optional] |
| **is_correction** | **Boolean** |  | [optional] |
| **child_interests** | [**Array&lt;RegisteredInterest&gt;**](RegisteredInterest.md) |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::RegisteredInterest.new(
  id: null,
  interest: null,
  created_when: null,
  last_amended_when: null,
  deleted_when: null,
  is_correction: null,
  child_interests: null
)
```

