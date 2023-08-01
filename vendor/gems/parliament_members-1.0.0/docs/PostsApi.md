# ParliamentMembers::PostsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_posts_departments_type_get**](PostsApi.md#api_posts_departments_type_get) | **GET** /api/Posts/Departments/{type} | Returns a list of departments. |
| [**api_posts_government_posts_get**](PostsApi.md#api_posts_government_posts_get) | **GET** /api/Posts/GovernmentPosts | Returns a list of government posts. |
| [**api_posts_opposition_posts_get**](PostsApi.md#api_posts_opposition_posts_get) | **GET** /api/Posts/OppositionPosts | Returns a list of opposition posts. |
| [**api_posts_speaker_and_deputies_for_date_get**](PostsApi.md#api_posts_speaker_and_deputies_for_date_get) | **GET** /api/Posts/SpeakerAndDeputies/{forDate} | Returns a list containing the speaker and deputy speakers. |
| [**api_posts_spokespersons_get**](PostsApi.md#api_posts_spokespersons_get) | **GET** /api/Posts/Spokespersons | Returns a list of spokespersons. |


## api_posts_departments_type_get

> <Array<GovernmentDepartment>> api_posts_departments_type_get(type)

Returns a list of departments.

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::PostsApi.new
type = ParliamentMembers::PostType::N0 # PostType | Departments by type

begin
  # Returns a list of departments.
  result = api_instance.api_posts_departments_type_get(type)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling PostsApi->api_posts_departments_type_get: #{e}"
end
```

#### Using the api_posts_departments_type_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GovernmentDepartment>>, Integer, Hash)> api_posts_departments_type_get_with_http_info(type)

```ruby
begin
  # Returns a list of departments.
  data, status_code, headers = api_instance.api_posts_departments_type_get_with_http_info(type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GovernmentDepartment>>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling PostsApi->api_posts_departments_type_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**PostType**](.md) | Departments by type |  |

### Return type

[**Array&lt;GovernmentDepartment&gt;**](GovernmentDepartment.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_posts_government_posts_get

> <Array<GovernmentOppositionPostItem>> api_posts_government_posts_get(opts)

Returns a list of government posts.

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::PostsApi.new
opts = {
  department_id: 56 # Integer | Government posts by department ID
}

begin
  # Returns a list of government posts.
  result = api_instance.api_posts_government_posts_get(opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling PostsApi->api_posts_government_posts_get: #{e}"
end
```

#### Using the api_posts_government_posts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GovernmentOppositionPostItem>>, Integer, Hash)> api_posts_government_posts_get_with_http_info(opts)

```ruby
begin
  # Returns a list of government posts.
  data, status_code, headers = api_instance.api_posts_government_posts_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GovernmentOppositionPostItem>>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling PostsApi->api_posts_government_posts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **department_id** | **Integer** | Government posts by department ID | [optional] |

### Return type

[**Array&lt;GovernmentOppositionPostItem&gt;**](GovernmentOppositionPostItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_posts_opposition_posts_get

> <Array<GovernmentOppositionPostItem>> api_posts_opposition_posts_get(opts)

Returns a list of opposition posts.

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::PostsApi.new
opts = {
  department_id: 56 # Integer | Opposition posts by department ID
}

begin
  # Returns a list of opposition posts.
  result = api_instance.api_posts_opposition_posts_get(opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling PostsApi->api_posts_opposition_posts_get: #{e}"
end
```

#### Using the api_posts_opposition_posts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GovernmentOppositionPostItem>>, Integer, Hash)> api_posts_opposition_posts_get_with_http_info(opts)

```ruby
begin
  # Returns a list of opposition posts.
  data, status_code, headers = api_instance.api_posts_opposition_posts_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GovernmentOppositionPostItem>>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling PostsApi->api_posts_opposition_posts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **department_id** | **Integer** | Opposition posts by department ID | [optional] |

### Return type

[**Array&lt;GovernmentOppositionPostItem&gt;**](GovernmentOppositionPostItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_posts_speaker_and_deputies_for_date_get

> <Array<MemberItem>> api_posts_speaker_and_deputies_for_date_get(for_date)

Returns a list containing the speaker and deputy speakers.

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::PostsApi.new
for_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Speaker and deputy speakers for date specified

begin
  # Returns a list containing the speaker and deputy speakers.
  result = api_instance.api_posts_speaker_and_deputies_for_date_get(for_date)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling PostsApi->api_posts_speaker_and_deputies_for_date_get: #{e}"
end
```

#### Using the api_posts_speaker_and_deputies_for_date_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MemberItem>>, Integer, Hash)> api_posts_speaker_and_deputies_for_date_get_with_http_info(for_date)

```ruby
begin
  # Returns a list containing the speaker and deputy speakers.
  data, status_code, headers = api_instance.api_posts_speaker_and_deputies_for_date_get_with_http_info(for_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MemberItem>>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling PostsApi->api_posts_speaker_and_deputies_for_date_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **for_date** | **Time** | Speaker and deputy speakers for date specified |  |

### Return type

[**Array&lt;MemberItem&gt;**](MemberItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_posts_spokespersons_get

> <Array<GovernmentOppositionPostItem>> api_posts_spokespersons_get(opts)

Returns a list of spokespersons.

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::PostsApi.new
opts = {
  party_id: 56 # Integer | Spokespersons by party ID
}

begin
  # Returns a list of spokespersons.
  result = api_instance.api_posts_spokespersons_get(opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling PostsApi->api_posts_spokespersons_get: #{e}"
end
```

#### Using the api_posts_spokespersons_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GovernmentOppositionPostItem>>, Integer, Hash)> api_posts_spokespersons_get_with_http_info(opts)

```ruby
begin
  # Returns a list of spokespersons.
  data, status_code, headers = api_instance.api_posts_spokespersons_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GovernmentOppositionPostItem>>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling PostsApi->api_posts_spokespersons_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **party_id** | **Integer** | Spokespersons by party ID | [optional] |

### Return type

[**Array&lt;GovernmentOppositionPostItem&gt;**](GovernmentOppositionPostItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

