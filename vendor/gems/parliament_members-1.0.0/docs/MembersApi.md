# ParliamentMembers::MembersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_members_history_get**](MembersApi.md#api_members_history_get) | **GET** /api/Members/History | Return members by ID with list of their historical names, parties and memberships |
| [**api_members_id_biography_get**](MembersApi.md#api_members_id_biography_get) | **GET** /api/Members/{id}/Biography | Return biography of member by ID |
| [**api_members_id_contact_get**](MembersApi.md#api_members_id_contact_get) | **GET** /api/Members/{id}/Contact | Return list of contact details of member by ID |
| [**api_members_id_contribution_summary_get**](MembersApi.md#api_members_id_contribution_summary_get) | **GET** /api/Members/{id}/ContributionSummary | Return contribution summary of member by ID |
| [**api_members_id_edms_get**](MembersApi.md#api_members_id_edms_get) | **GET** /api/Members/{id}/Edms | Return list of early day motions of member by ID |
| [**api_members_id_experience_get**](MembersApi.md#api_members_id_experience_get) | **GET** /api/Members/{id}/Experience | Return experience of member by ID |
| [**api_members_id_focus_get**](MembersApi.md#api_members_id_focus_get) | **GET** /api/Members/{id}/Focus | Return list of areas of focus of member by ID |
| [**api_members_id_get**](MembersApi.md#api_members_id_get) | **GET** /api/Members/{id} | Return member by ID |
| [**api_members_id_latest_election_result_get**](MembersApi.md#api_members_id_latest_election_result_get) | **GET** /api/Members/{id}/LatestElectionResult | Return latest election result of member by ID |
| [**api_members_id_portrait_get**](MembersApi.md#api_members_id_portrait_get) | **GET** /api/Members/{id}/Portrait | Return portrait of member by ID |
| [**api_members_id_portrait_url_get**](MembersApi.md#api_members_id_portrait_url_get) | **GET** /api/Members/{id}/PortraitUrl | Return portrait url of member by ID |
| [**api_members_id_registered_interests_get**](MembersApi.md#api_members_id_registered_interests_get) | **GET** /api/Members/{id}/RegisteredInterests | Return list of registered interests of member by ID |
| [**api_members_id_staff_get**](MembersApi.md#api_members_id_staff_get) | **GET** /api/Members/{id}/Staff | Return list of staff of member by ID |
| [**api_members_id_synopsis_get**](MembersApi.md#api_members_id_synopsis_get) | **GET** /api/Members/{id}/Synopsis | Return synopsis of member by ID |
| [**api_members_id_thumbnail_get**](MembersApi.md#api_members_id_thumbnail_get) | **GET** /api/Members/{id}/Thumbnail | Return thumbnail of member by ID |
| [**api_members_id_thumbnail_url_get**](MembersApi.md#api_members_id_thumbnail_url_get) | **GET** /api/Members/{id}/ThumbnailUrl | Return thumbnail url of member by ID |
| [**api_members_id_voting_get**](MembersApi.md#api_members_id_voting_get) | **GET** /api/Members/{id}/Voting | Return list of votes by member by ID |
| [**api_members_id_written_questions_get**](MembersApi.md#api_members_id_written_questions_get) | **GET** /api/Members/{id}/WrittenQuestions | Return list of written questions by member by ID |
| [**api_members_search_get**](MembersApi.md#api_members_search_get) | **GET** /api/Members/Search | Returns a list of current members of the Commons or Lords |
| [**api_members_search_historical_get**](MembersApi.md#api_members_search_historical_get) | **GET** /api/Members/SearchHistorical | Returns a list of members of the Commons or Lords |


## api_members_history_get

> <Array<MemberHistoryItem>> api_members_history_get(opts)

Return members by ID with list of their historical names, parties and memberships

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
opts = {
  ids: [37] # Array<Integer> | List of MemberIds to find
}

begin
  # Return members by ID with list of their historical names, parties and memberships
  result = api_instance.api_members_history_get(opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_history_get: #{e}"
end
```

#### Using the api_members_history_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MemberHistoryItem>>, Integer, Hash)> api_members_history_get_with_http_info(opts)

```ruby
begin
  # Return members by ID with list of their historical names, parties and memberships
  data, status_code, headers = api_instance.api_members_history_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MemberHistoryItem>>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_history_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;Integer&gt;**](Integer.md) | List of MemberIds to find | [optional] |

### Return type

[**Array&lt;MemberHistoryItem&gt;**](MemberHistoryItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_id_biography_get

> <MemberBiographyItem> api_members_id_biography_get(id)

Return biography of member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Biography of Member by ID specified

begin
  # Return biography of member by ID
  result = api_instance.api_members_id_biography_get(id)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_biography_get: #{e}"
end
```

#### Using the api_members_id_biography_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberBiographyItem>, Integer, Hash)> api_members_id_biography_get_with_http_info(id)

```ruby
begin
  # Return biography of member by ID
  data, status_code, headers = api_instance.api_members_id_biography_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberBiographyItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_biography_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Biography of Member by ID specified |  |

### Return type

[**MemberBiographyItem**](MemberBiographyItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_id_contact_get

> <ContactInformationListItem> api_members_id_contact_get(id)

Return list of contact details of member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Contact details of Member by ID specified

begin
  # Return list of contact details of member by ID
  result = api_instance.api_members_id_contact_get(id)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_contact_get: #{e}"
end
```

#### Using the api_members_id_contact_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactInformationListItem>, Integer, Hash)> api_members_id_contact_get_with_http_info(id)

```ruby
begin
  # Return list of contact details of member by ID
  data, status_code, headers = api_instance.api_members_id_contact_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactInformationListItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_contact_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Contact details of Member by ID specified |  |

### Return type

[**ContactInformationListItem**](ContactInformationListItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_id_contribution_summary_get

> <DebateContributionMembersServiceSearchResult> api_members_id_contribution_summary_get(id, opts)

Return contribution summary of member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Contribution summary of Member by ID specified
opts = {
  page: 56 # Integer | 
}

begin
  # Return contribution summary of member by ID
  result = api_instance.api_members_id_contribution_summary_get(id, opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_contribution_summary_get: #{e}"
end
```

#### Using the api_members_id_contribution_summary_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DebateContributionMembersServiceSearchResult>, Integer, Hash)> api_members_id_contribution_summary_get_with_http_info(id, opts)

```ruby
begin
  # Return contribution summary of member by ID
  data, status_code, headers = api_instance.api_members_id_contribution_summary_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DebateContributionMembersServiceSearchResult>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_contribution_summary_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Contribution summary of Member by ID specified |  |
| **page** | **Integer** |  | [optional] |

### Return type

[**DebateContributionMembersServiceSearchResult**](DebateContributionMembersServiceSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_id_edms_get

> <EarlyDayMotionMembersServiceSearchResult> api_members_id_edms_get(id, opts)

Return list of early day motions of member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Early day motions of Member by ID specified
opts = {
  page: 56 # Integer | 
}

begin
  # Return list of early day motions of member by ID
  result = api_instance.api_members_id_edms_get(id, opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_edms_get: #{e}"
end
```

#### Using the api_members_id_edms_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EarlyDayMotionMembersServiceSearchResult>, Integer, Hash)> api_members_id_edms_get_with_http_info(id, opts)

```ruby
begin
  # Return list of early day motions of member by ID
  data, status_code, headers = api_instance.api_members_id_edms_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EarlyDayMotionMembersServiceSearchResult>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_edms_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Early day motions of Member by ID specified |  |
| **page** | **Integer** |  | [optional] |

### Return type

[**EarlyDayMotionMembersServiceSearchResult**](EarlyDayMotionMembersServiceSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_id_experience_get

> <BiographyExperienceListItem> api_members_id_experience_get(id)

Return experience of member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Experience of Member by ID specified

begin
  # Return experience of member by ID
  result = api_instance.api_members_id_experience_get(id)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_experience_get: #{e}"
end
```

#### Using the api_members_id_experience_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BiographyExperienceListItem>, Integer, Hash)> api_members_id_experience_get_with_http_info(id)

```ruby
begin
  # Return experience of member by ID
  data, status_code, headers = api_instance.api_members_id_experience_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BiographyExperienceListItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_experience_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Experience of Member by ID specified |  |

### Return type

[**BiographyExperienceListItem**](BiographyExperienceListItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_id_focus_get

> <MemberFocusListItem> api_members_id_focus_get(id)

Return list of areas of focus of member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Areas of focus of Member by ID specified

begin
  # Return list of areas of focus of member by ID
  result = api_instance.api_members_id_focus_get(id)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_focus_get: #{e}"
end
```

#### Using the api_members_id_focus_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberFocusListItem>, Integer, Hash)> api_members_id_focus_get_with_http_info(id)

```ruby
begin
  # Return list of areas of focus of member by ID
  data, status_code, headers = api_instance.api_members_id_focus_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberFocusListItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_focus_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Areas of focus of Member by ID specified |  |

### Return type

[**MemberFocusListItem**](MemberFocusListItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_id_get

> <MemberItem> api_members_id_get(id, opts)

Return member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Member by ID specified
opts = {
  details_for_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | Member object will be populated with details from the date specified
}

begin
  # Return member by ID
  result = api_instance.api_members_id_get(id, opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_get: #{e}"
end
```

#### Using the api_members_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberItem>, Integer, Hash)> api_members_id_get_with_http_info(id, opts)

```ruby
begin
  # Return member by ID
  data, status_code, headers = api_instance.api_members_id_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Member by ID specified |  |
| **details_for_date** | **Time** | Member object will be populated with details from the date specified | [optional] |

### Return type

[**MemberItem**](MemberItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_id_latest_election_result_get

> <ElectionResultItem> api_members_id_latest_election_result_get(id)

Return latest election result of member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Latest election result of Member by ID specified

begin
  # Return latest election result of member by ID
  result = api_instance.api_members_id_latest_election_result_get(id)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_latest_election_result_get: #{e}"
end
```

#### Using the api_members_id_latest_election_result_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElectionResultItem>, Integer, Hash)> api_members_id_latest_election_result_get_with_http_info(id)

```ruby
begin
  # Return latest election result of member by ID
  data, status_code, headers = api_instance.api_members_id_latest_election_result_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElectionResultItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_latest_election_result_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Latest election result of Member by ID specified |  |

### Return type

[**ElectionResultItem**](ElectionResultItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_id_portrait_get

> api_members_id_portrait_get(id, opts)

Return portrait of member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Portrait of Member by ID specified
opts = {
  crop_type: ParliamentMembers::PortraitCropEnum::N0, # PortraitCropEnum | 
  web_version: true # Boolean | 
}

begin
  # Return portrait of member by ID
  api_instance.api_members_id_portrait_get(id, opts)
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_portrait_get: #{e}"
end
```

#### Using the api_members_id_portrait_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> api_members_id_portrait_get_with_http_info(id, opts)

```ruby
begin
  # Return portrait of member by ID
  data, status_code, headers = api_instance.api_members_id_portrait_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_portrait_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Portrait of Member by ID specified |  |
| **crop_type** | [**PortraitCropEnum**](.md) |  | [optional] |
| **web_version** | **Boolean** |  | [optional][default to true] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## api_members_id_portrait_url_get

> <StringItem> api_members_id_portrait_url_get(id)

Return portrait url of member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Portrait url of Member by ID specified

begin
  # Return portrait url of member by ID
  result = api_instance.api_members_id_portrait_url_get(id)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_portrait_url_get: #{e}"
end
```

#### Using the api_members_id_portrait_url_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringItem>, Integer, Hash)> api_members_id_portrait_url_get_with_http_info(id)

```ruby
begin
  # Return portrait url of member by ID
  data, status_code, headers = api_instance.api_members_id_portrait_url_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_portrait_url_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Portrait url of Member by ID specified |  |

### Return type

[**StringItem**](StringItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_id_registered_interests_get

> <RegisteredInterestCategoryListItem> api_members_id_registered_interests_get(id, opts)

Return list of registered interests of member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Registered interests of Member by ID specified
opts = {
  house: ParliamentMembers::House::N1 # House | Registered interests of Member by House specified
}

begin
  # Return list of registered interests of member by ID
  result = api_instance.api_members_id_registered_interests_get(id, opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_registered_interests_get: #{e}"
end
```

#### Using the api_members_id_registered_interests_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegisteredInterestCategoryListItem>, Integer, Hash)> api_members_id_registered_interests_get_with_http_info(id, opts)

```ruby
begin
  # Return list of registered interests of member by ID
  data, status_code, headers = api_instance.api_members_id_registered_interests_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegisteredInterestCategoryListItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_registered_interests_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Registered interests of Member by ID specified |  |
| **house** | [**House**](.md) | Registered interests of Member by House specified | [optional] |

### Return type

[**RegisteredInterestCategoryListItem**](RegisteredInterestCategoryListItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_id_staff_get

> <StaffListItem> api_members_id_staff_get(id)

Return list of staff of member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Staff of Member by ID specified

begin
  # Return list of staff of member by ID
  result = api_instance.api_members_id_staff_get(id)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_staff_get: #{e}"
end
```

#### Using the api_members_id_staff_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StaffListItem>, Integer, Hash)> api_members_id_staff_get_with_http_info(id)

```ruby
begin
  # Return list of staff of member by ID
  data, status_code, headers = api_instance.api_members_id_staff_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StaffListItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_staff_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Staff of Member by ID specified |  |

### Return type

[**StaffListItem**](StaffListItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_id_synopsis_get

> <StringItem> api_members_id_synopsis_get(id)

Return synopsis of member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Synopsis of Member by ID specified

begin
  # Return synopsis of member by ID
  result = api_instance.api_members_id_synopsis_get(id)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_synopsis_get: #{e}"
end
```

#### Using the api_members_id_synopsis_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringItem>, Integer, Hash)> api_members_id_synopsis_get_with_http_info(id)

```ruby
begin
  # Return synopsis of member by ID
  data, status_code, headers = api_instance.api_members_id_synopsis_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_synopsis_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Synopsis of Member by ID specified |  |

### Return type

[**StringItem**](StringItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_id_thumbnail_get

> api_members_id_thumbnail_get(id)

Return thumbnail of member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Thumbnail of Member by ID specified

begin
  # Return thumbnail of member by ID
  api_instance.api_members_id_thumbnail_get(id)
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_thumbnail_get: #{e}"
end
```

#### Using the api_members_id_thumbnail_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> api_members_id_thumbnail_get_with_http_info(id)

```ruby
begin
  # Return thumbnail of member by ID
  data, status_code, headers = api_instance.api_members_id_thumbnail_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_thumbnail_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Thumbnail of Member by ID specified |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## api_members_id_thumbnail_url_get

> <StringItem> api_members_id_thumbnail_url_get(id)

Return thumbnail url of member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Thumbnail url of Member by ID specified

begin
  # Return thumbnail url of member by ID
  result = api_instance.api_members_id_thumbnail_url_get(id)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_thumbnail_url_get: #{e}"
end
```

#### Using the api_members_id_thumbnail_url_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringItem>, Integer, Hash)> api_members_id_thumbnail_url_get_with_http_info(id)

```ruby
begin
  # Return thumbnail url of member by ID
  data, status_code, headers = api_instance.api_members_id_thumbnail_url_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_thumbnail_url_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Thumbnail url of Member by ID specified |  |

### Return type

[**StringItem**](StringItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_id_voting_get

> <VoteMembersServiceSearchResult> api_members_id_voting_get(id, house, opts)

Return list of votes by member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Votes by Member by ID specified
house = ParliamentMembers::House::N1 # House | 
opts = {
  page: 56 # Integer | 
}

begin
  # Return list of votes by member by ID
  result = api_instance.api_members_id_voting_get(id, house, opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_voting_get: #{e}"
end
```

#### Using the api_members_id_voting_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoteMembersServiceSearchResult>, Integer, Hash)> api_members_id_voting_get_with_http_info(id, house, opts)

```ruby
begin
  # Return list of votes by member by ID
  data, status_code, headers = api_instance.api_members_id_voting_get_with_http_info(id, house, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoteMembersServiceSearchResult>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_voting_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Votes by Member by ID specified |  |
| **house** | [**House**](.md) |  |  |
| **page** | **Integer** |  | [optional] |

### Return type

[**VoteMembersServiceSearchResult**](VoteMembersServiceSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_id_written_questions_get

> <WrittenQuestionMembersServiceSearchResult> api_members_id_written_questions_get(id, opts)

Return list of written questions by member by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
id = 56 # Integer | Written questions by Member by ID specified
opts = {
  page: 56 # Integer | 
}

begin
  # Return list of written questions by member by ID
  result = api_instance.api_members_id_written_questions_get(id, opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_written_questions_get: #{e}"
end
```

#### Using the api_members_id_written_questions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WrittenQuestionMembersServiceSearchResult>, Integer, Hash)> api_members_id_written_questions_get_with_http_info(id, opts)

```ruby
begin
  # Return list of written questions by member by ID
  data, status_code, headers = api_instance.api_members_id_written_questions_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WrittenQuestionMembersServiceSearchResult>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_id_written_questions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Written questions by Member by ID specified |  |
| **page** | **Integer** |  | [optional] |

### Return type

[**WrittenQuestionMembersServiceSearchResult**](WrittenQuestionMembersServiceSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_search_get

> <MemberMembersServiceSearchResult> api_members_search_get(opts)

Returns a list of current members of the Commons or Lords

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
opts = {
  name: 'name_example', # String | Members where name contains term specified
  location: 'location_example', # String | Members where postcode or geographical location matches the term specified
  post_title: 'post_title_example', # String | Members which have held the post specified
  party_id: 56, # Integer | Members which are currently affiliated with party with party ID
  house: ParliamentMembers::House::N1, # House | Members where their most recent house is the house specified
  constituency_id: 56, # Integer | Members which currently hold the constituency with constituency id
  name_starts_with: 'name_starts_with_example', # String | Members with surname begining with letter(s) specified
  gender: 'gender_example', # String | Members with the gender specified
  membership_started_since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Members who started on or after the date given
  membership_ended_membership_ended_since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Members who left the House on or after the date given
  membership_ended_membership_end_reason_ids: [37], # Array<Integer> | 
  membership_in_date_range_was_member_on_or_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Members who were active on or after the date specified
  membership_in_date_range_was_member_on_or_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Members who were active on or before the date specified
  membership_in_date_range_was_member_of_house: ParliamentMembers::House::N1, # House | Members who were active in the house specifid
  is_eligible: true, # Boolean | Members currently Eligible to sit in their House
  is_current_member: true, # Boolean | Members who are current or former members
  policy_interest_id: 56, # Integer | Members with specified policy interest
  experience: 'experience_example', # String | Members with specified experience
  skip: 56, # Integer | The number of records to skip from the first, default is 0
  take: 56 # Integer | The number of records to return, default is 20. Maximum is 20
}

begin
  # Returns a list of current members of the Commons or Lords
  result = api_instance.api_members_search_get(opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_search_get: #{e}"
end
```

#### Using the api_members_search_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberMembersServiceSearchResult>, Integer, Hash)> api_members_search_get_with_http_info(opts)

```ruby
begin
  # Returns a list of current members of the Commons or Lords
  data, status_code, headers = api_instance.api_members_search_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberMembersServiceSearchResult>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_search_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Members where name contains term specified | [optional] |
| **location** | **String** | Members where postcode or geographical location matches the term specified | [optional] |
| **post_title** | **String** | Members which have held the post specified | [optional] |
| **party_id** | **Integer** | Members which are currently affiliated with party with party ID | [optional] |
| **house** | [**House**](.md) | Members where their most recent house is the house specified | [optional] |
| **constituency_id** | **Integer** | Members which currently hold the constituency with constituency id | [optional] |
| **name_starts_with** | **String** | Members with surname begining with letter(s) specified | [optional] |
| **gender** | **String** | Members with the gender specified | [optional] |
| **membership_started_since** | **Time** | Members who started on or after the date given | [optional] |
| **membership_ended_membership_ended_since** | **Time** | Members who left the House on or after the date given | [optional] |
| **membership_ended_membership_end_reason_ids** | [**Array&lt;Integer&gt;**](Integer.md) |  | [optional] |
| **membership_in_date_range_was_member_on_or_after** | **Time** | Members who were active on or after the date specified | [optional] |
| **membership_in_date_range_was_member_on_or_before** | **Time** | Members who were active on or before the date specified | [optional] |
| **membership_in_date_range_was_member_of_house** | [**House**](.md) | Members who were active in the house specifid | [optional] |
| **is_eligible** | **Boolean** | Members currently Eligible to sit in their House | [optional] |
| **is_current_member** | **Boolean** | Members who are current or former members | [optional] |
| **policy_interest_id** | **Integer** | Members with specified policy interest | [optional] |
| **experience** | **String** | Members with specified experience | [optional] |
| **skip** | **Integer** | The number of records to skip from the first, default is 0 | [optional][default to 0] |
| **take** | **Integer** | The number of records to return, default is 20. Maximum is 20 | [optional][default to 20] |

### Return type

[**MemberMembersServiceSearchResult**](MemberMembersServiceSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_members_search_historical_get

> <MemberMembersServiceSearchResult> api_members_search_historical_get(opts)

Returns a list of members of the Commons or Lords

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::MembersApi.new
opts = {
  name: 'name_example', # String | Members with names containing the term specified
  date_to_search_for: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Members that were an active member of the Commons or Lords on the date specified
  skip: 56, # Integer | The number of records to skip from the first, default is 0
  take: 56 # Integer | The number of records to return, default is 20. Maximum is 20
}

begin
  # Returns a list of members of the Commons or Lords
  result = api_instance.api_members_search_historical_get(opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_search_historical_get: #{e}"
end
```

#### Using the api_members_search_historical_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberMembersServiceSearchResult>, Integer, Hash)> api_members_search_historical_get_with_http_info(opts)

```ruby
begin
  # Returns a list of members of the Commons or Lords
  data, status_code, headers = api_instance.api_members_search_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberMembersServiceSearchResult>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling MembersApi->api_members_search_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Members with names containing the term specified | [optional] |
| **date_to_search_for** | **Time** | Members that were an active member of the Commons or Lords on the date specified | [optional] |
| **skip** | **Integer** | The number of records to skip from the first, default is 0 | [optional][default to 0] |
| **take** | **Integer** | The number of records to return, default is 20. Maximum is 20 | [optional][default to 20] |

### Return type

[**MemberMembersServiceSearchResult**](MemberMembersServiceSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

