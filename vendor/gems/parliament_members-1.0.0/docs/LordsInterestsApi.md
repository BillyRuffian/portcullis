# ParliamentMembers::LordsInterestsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_lords_interests_register_get**](LordsInterestsApi.md#api_lords_interests_register_get) | **GET** /api/LordsInterests/Register | Returns a list of registered interests |
| [**api_lords_interests_staff_get**](LordsInterestsApi.md#api_lords_interests_staff_get) | **GET** /api/LordsInterests/Staff | Returns a list of staff |


## api_lords_interests_register_get

> <MembersInterestsMembersServiceSearchResult> api_lords_interests_register_get(opts)

Returns a list of registered interests

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::LordsInterestsApi.new
opts = {
  search_term: 'search_term_example', # String | Registered interests containing search term
  page: 56, # Integer | Page of results to return, default 0. Results per page 20.
  include_deleted: true # Boolean | Registered interests that have been deleted
}

begin
  # Returns a list of registered interests
  result = api_instance.api_lords_interests_register_get(opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LordsInterestsApi->api_lords_interests_register_get: #{e}"
end
```

#### Using the api_lords_interests_register_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MembersInterestsMembersServiceSearchResult>, Integer, Hash)> api_lords_interests_register_get_with_http_info(opts)

```ruby
begin
  # Returns a list of registered interests
  data, status_code, headers = api_instance.api_lords_interests_register_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MembersInterestsMembersServiceSearchResult>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LordsInterestsApi->api_lords_interests_register_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search_term** | **String** | Registered interests containing search term | [optional] |
| **page** | **Integer** | Page of results to return, default 0. Results per page 20. | [optional] |
| **include_deleted** | **Boolean** | Registered interests that have been deleted | [optional][default to false] |

### Return type

[**MembersInterestsMembersServiceSearchResult**](MembersInterestsMembersServiceSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_lords_interests_staff_get

> <MembersStaffMembersServiceSearchResult> api_lords_interests_staff_get(opts)

Returns a list of staff

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::LordsInterestsApi.new
opts = {
  search_term: 'search_term_example', # String | Staff containing search term
  page: 56 # Integer | Page of results to return, default 0. Results per page 20.
}

begin
  # Returns a list of staff
  result = api_instance.api_lords_interests_staff_get(opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LordsInterestsApi->api_lords_interests_staff_get: #{e}"
end
```

#### Using the api_lords_interests_staff_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MembersStaffMembersServiceSearchResult>, Integer, Hash)> api_lords_interests_staff_get_with_http_info(opts)

```ruby
begin
  # Returns a list of staff
  data, status_code, headers = api_instance.api_lords_interests_staff_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MembersStaffMembersServiceSearchResult>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LordsInterestsApi->api_lords_interests_staff_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search_term** | **String** | Staff containing search term | [optional] |
| **page** | **Integer** | Page of results to return, default 0. Results per page 20. | [optional] |

### Return type

[**MembersStaffMembersServiceSearchResult**](MembersStaffMembersServiceSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

