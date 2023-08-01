# ParliamentMembers::Location

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context** | [**LocationContext**](LocationContext.md) |  | [optional] |
| **parent_context** | [**LocationContext**](LocationContext.md) |  | [optional] |
| **child_contexts** | [**Array&lt;LocationContext&gt;**](LocationContext.md) |  | [optional] |
| **state_of_the_parties** | [**Array&lt;PartySeatCount&gt;**](PartySeatCount.md) |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::Location.new(
  context: null,
  parent_context: null,
  child_contexts: null,
  state_of_the_parties: null
)
```

