# ParliamentMembers::MemberBiography

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **representations** | [**Array&lt;BiographyItem&gt;**](BiographyItem.md) |  | [optional] |
| **elections_contested** | [**Array&lt;BiographyItem&gt;**](BiographyItem.md) |  | [optional] |
| **house_memberships** | [**Array&lt;BiographyItem&gt;**](BiographyItem.md) |  | [optional] |
| **government_posts** | [**Array&lt;BiographyItem&gt;**](BiographyItem.md) |  | [optional] |
| **opposition_posts** | [**Array&lt;BiographyItem&gt;**](BiographyItem.md) |  | [optional] |
| **other_posts** | [**Array&lt;BiographyItem&gt;**](BiographyItem.md) |  | [optional] |
| **party_affiliations** | [**Array&lt;BiographyItem&gt;**](BiographyItem.md) |  | [optional] |
| **committee_memberships** | [**Array&lt;BiographyItem&gt;**](BiographyItem.md) |  | [optional] |

## Example

```ruby
require 'parliament_members'

instance = ParliamentMembers::MemberBiography.new(
  representations: null,
  elections_contested: null,
  house_memberships: null,
  government_posts: null,
  opposition_posts: null,
  other_posts: null,
  party_affiliations: null,
  committee_memberships: null
)
```

