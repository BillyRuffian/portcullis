# ParliamentMembers::LocationApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_location_browse_location_type_location_name_get**](LocationApi.md#api_location_browse_location_type_location_name_get) | **GET** /api/Location/Browse/{locationType}/{locationName} | Returns a list of locations, both parent and child |
| [**api_location_constituency_id_election_result_election_id_get**](LocationApi.md#api_location_constituency_id_election_result_election_id_get) | **GET** /api/Location/Constituency/{id}/ElectionResult/{electionId} | Returns an election result by constituency and election id |
| [**api_location_constituency_id_election_result_latest_get**](LocationApi.md#api_location_constituency_id_election_result_latest_get) | **GET** /api/Location/Constituency/{id}/ElectionResult/Latest | Returns latest election result by constituency id |
| [**api_location_constituency_id_election_results_get**](LocationApi.md#api_location_constituency_id_election_results_get) | **GET** /api/Location/Constituency/{id}/ElectionResults | Returns a list of election results by constituency ID |
| [**api_location_constituency_id_geometry_get**](LocationApi.md#api_location_constituency_id_geometry_get) | **GET** /api/Location/Constituency/{id}/Geometry | Returns geometry by constituency ID |
| [**api_location_constituency_id_get**](LocationApi.md#api_location_constituency_id_get) | **GET** /api/Location/Constituency/{id} | Returns a constituency by ID |
| [**api_location_constituency_id_representations_get**](LocationApi.md#api_location_constituency_id_representations_get) | **GET** /api/Location/Constituency/{id}/Representations | Returns a list of representations by constituency ID |
| [**api_location_constituency_id_synopsis_get**](LocationApi.md#api_location_constituency_id_synopsis_get) | **GET** /api/Location/Constituency/{id}/Synopsis | Returns a synopsis by constituency ID |
| [**api_location_constituency_search_get**](LocationApi.md#api_location_constituency_search_get) | **GET** /api/Location/Constituency/Search | Returns a list of constituencies |


## api_location_browse_location_type_location_name_get

> <LocationItem> api_location_browse_location_type_location_name_get(location_type, location_name)

Returns a list of locations, both parent and child

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::LocationApi.new
location_type = ParliamentMembers::LocationType::N0 # LocationType | Location by type of location
location_name = 'location_name_example' # String | Location by name specified

begin
  # Returns a list of locations, both parent and child
  result = api_instance.api_location_browse_location_type_location_name_get(location_type, location_name)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_browse_location_type_location_name_get: #{e}"
end
```

#### Using the api_location_browse_location_type_location_name_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LocationItem>, Integer, Hash)> api_location_browse_location_type_location_name_get_with_http_info(location_type, location_name)

```ruby
begin
  # Returns a list of locations, both parent and child
  data, status_code, headers = api_instance.api_location_browse_location_type_location_name_get_with_http_info(location_type, location_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LocationItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_browse_location_type_location_name_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location_type** | [**LocationType**](.md) | Location by type of location |  |
| **location_name** | **String** | Location by name specified |  |

### Return type

[**LocationItem**](LocationItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_location_constituency_id_election_result_election_id_get

> <ElectionResultItem> api_location_constituency_id_election_result_election_id_get(id, election_id)

Returns an election result by constituency and election id

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::LocationApi.new
id = 56 # Integer | Election result by constituency id
election_id = 56 # Integer | Election result by election id

begin
  # Returns an election result by constituency and election id
  result = api_instance.api_location_constituency_id_election_result_election_id_get(id, election_id)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_constituency_id_election_result_election_id_get: #{e}"
end
```

#### Using the api_location_constituency_id_election_result_election_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElectionResultItem>, Integer, Hash)> api_location_constituency_id_election_result_election_id_get_with_http_info(id, election_id)

```ruby
begin
  # Returns an election result by constituency and election id
  data, status_code, headers = api_instance.api_location_constituency_id_election_result_election_id_get_with_http_info(id, election_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElectionResultItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_constituency_id_election_result_election_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Election result by constituency id |  |
| **election_id** | **Integer** | Election result by election id |  |

### Return type

[**ElectionResultItem**](ElectionResultItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_location_constituency_id_election_result_latest_get

> <ElectionResultItem> api_location_constituency_id_election_result_latest_get(id)

Returns latest election result by constituency id

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::LocationApi.new
id = 56 # Integer | Latest election result by constituency id

begin
  # Returns latest election result by constituency id
  result = api_instance.api_location_constituency_id_election_result_latest_get(id)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_constituency_id_election_result_latest_get: #{e}"
end
```

#### Using the api_location_constituency_id_election_result_latest_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElectionResultItem>, Integer, Hash)> api_location_constituency_id_election_result_latest_get_with_http_info(id)

```ruby
begin
  # Returns latest election result by constituency id
  data, status_code, headers = api_instance.api_location_constituency_id_election_result_latest_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElectionResultItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_constituency_id_election_result_latest_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Latest election result by constituency id |  |

### Return type

[**ElectionResultItem**](ElectionResultItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_location_constituency_id_election_results_get

> <ElectionResultListItem> api_location_constituency_id_election_results_get(id)

Returns a list of election results by constituency ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::LocationApi.new
id = 56 # Integer | Elections results by constituency ID

begin
  # Returns a list of election results by constituency ID
  result = api_instance.api_location_constituency_id_election_results_get(id)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_constituency_id_election_results_get: #{e}"
end
```

#### Using the api_location_constituency_id_election_results_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElectionResultListItem>, Integer, Hash)> api_location_constituency_id_election_results_get_with_http_info(id)

```ruby
begin
  # Returns a list of election results by constituency ID
  data, status_code, headers = api_instance.api_location_constituency_id_election_results_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElectionResultListItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_constituency_id_election_results_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Elections results by constituency ID |  |

### Return type

[**ElectionResultListItem**](ElectionResultListItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_location_constituency_id_geometry_get

> <StringItem> api_location_constituency_id_geometry_get(id)

Returns geometry by constituency ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::LocationApi.new
id = 56 # Integer | Geometry by constituency ID

begin
  # Returns geometry by constituency ID
  result = api_instance.api_location_constituency_id_geometry_get(id)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_constituency_id_geometry_get: #{e}"
end
```

#### Using the api_location_constituency_id_geometry_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringItem>, Integer, Hash)> api_location_constituency_id_geometry_get_with_http_info(id)

```ruby
begin
  # Returns geometry by constituency ID
  data, status_code, headers = api_instance.api_location_constituency_id_geometry_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_constituency_id_geometry_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Geometry by constituency ID |  |

### Return type

[**StringItem**](StringItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_location_constituency_id_get

> <ConstituencyItem> api_location_constituency_id_get(id)

Returns a constituency by ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::LocationApi.new
id = 56 # Integer | Constituency by ID

begin
  # Returns a constituency by ID
  result = api_instance.api_location_constituency_id_get(id)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_constituency_id_get: #{e}"
end
```

#### Using the api_location_constituency_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConstituencyItem>, Integer, Hash)> api_location_constituency_id_get_with_http_info(id)

```ruby
begin
  # Returns a constituency by ID
  data, status_code, headers = api_instance.api_location_constituency_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConstituencyItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_constituency_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Constituency by ID |  |

### Return type

[**ConstituencyItem**](ConstituencyItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_location_constituency_id_representations_get

> <ConstituencyRepresentationListItem> api_location_constituency_id_representations_get(id)

Returns a list of representations by constituency ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::LocationApi.new
id = 56 # Integer | Representations by constituency ID

begin
  # Returns a list of representations by constituency ID
  result = api_instance.api_location_constituency_id_representations_get(id)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_constituency_id_representations_get: #{e}"
end
```

#### Using the api_location_constituency_id_representations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConstituencyRepresentationListItem>, Integer, Hash)> api_location_constituency_id_representations_get_with_http_info(id)

```ruby
begin
  # Returns a list of representations by constituency ID
  data, status_code, headers = api_instance.api_location_constituency_id_representations_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConstituencyRepresentationListItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_constituency_id_representations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Representations by constituency ID |  |

### Return type

[**ConstituencyRepresentationListItem**](ConstituencyRepresentationListItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_location_constituency_id_synopsis_get

> <StringItem> api_location_constituency_id_synopsis_get(id)

Returns a synopsis by constituency ID

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::LocationApi.new
id = 56 # Integer | Synopsis by constituency ID

begin
  # Returns a synopsis by constituency ID
  result = api_instance.api_location_constituency_id_synopsis_get(id)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_constituency_id_synopsis_get: #{e}"
end
```

#### Using the api_location_constituency_id_synopsis_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringItem>, Integer, Hash)> api_location_constituency_id_synopsis_get_with_http_info(id)

```ruby
begin
  # Returns a synopsis by constituency ID
  data, status_code, headers = api_instance.api_location_constituency_id_synopsis_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringItem>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_constituency_id_synopsis_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Synopsis by constituency ID |  |

### Return type

[**StringItem**](StringItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_location_constituency_search_get

> <ConstituencyMembersServiceSearchResult> api_location_constituency_search_get(opts)

Returns a list of constituencies

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::LocationApi.new
opts = {
  search_text: 'search_text_example', # String | Constituencies containing serach term in their name
  skip: 56, # Integer | The number of records to skip from the first, default is 0
  take: 56 # Integer | The number of records to return, default is 20. Maximum is 20
}

begin
  # Returns a list of constituencies
  result = api_instance.api_location_constituency_search_get(opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_constituency_search_get: #{e}"
end
```

#### Using the api_location_constituency_search_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConstituencyMembersServiceSearchResult>, Integer, Hash)> api_location_constituency_search_get_with_http_info(opts)

```ruby
begin
  # Returns a list of constituencies
  data, status_code, headers = api_instance.api_location_constituency_search_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConstituencyMembersServiceSearchResult>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling LocationApi->api_location_constituency_search_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search_text** | **String** | Constituencies containing serach term in their name | [optional] |
| **skip** | **Integer** | The number of records to skip from the first, default is 0 | [optional][default to 0] |
| **take** | **Integer** | The number of records to return, default is 20. Maximum is 20 | [optional][default to 20] |

### Return type

[**ConstituencyMembersServiceSearchResult**](ConstituencyMembersServiceSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

