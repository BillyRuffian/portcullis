# ParliamentMembers::ReferenceApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_reference_answering_bodies_get**](ReferenceApi.md#api_reference_answering_bodies_get) | **GET** /api/Reference/AnsweringBodies | Returns a list of answering bodies. |
| [**api_reference_departments_get**](ReferenceApi.md#api_reference_departments_get) | **GET** /api/Reference/Departments | Returns a list of departments. |
| [**api_reference_departments_id_logo_get**](ReferenceApi.md#api_reference_departments_id_logo_get) | **GET** /api/Reference/Departments/{id}/Logo | Returns department logo. |
| [**api_reference_policy_interests_get**](ReferenceApi.md#api_reference_policy_interests_get) | **GET** /api/Reference/PolicyInterests | Returns a list of policy interest. |


## api_reference_answering_bodies_get

> <Array<AnsweringBody>> api_reference_answering_bodies_get(opts)

Returns a list of answering bodies.

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::ReferenceApi.new
opts = {
  id: 56, # Integer | 
  name_contains: 'name_contains_example' # String | 
}

begin
  # Returns a list of answering bodies.
  result = api_instance.api_reference_answering_bodies_get(opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling ReferenceApi->api_reference_answering_bodies_get: #{e}"
end
```

#### Using the api_reference_answering_bodies_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AnsweringBody>>, Integer, Hash)> api_reference_answering_bodies_get_with_http_info(opts)

```ruby
begin
  # Returns a list of answering bodies.
  data, status_code, headers = api_instance.api_reference_answering_bodies_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AnsweringBody>>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling ReferenceApi->api_reference_answering_bodies_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name_contains** | **String** |  | [optional] |

### Return type

[**Array&lt;AnsweringBody&gt;**](AnsweringBody.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_reference_departments_get

> <Array<GovernmentDepartment>> api_reference_departments_get(opts)

Returns a list of departments.

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::ReferenceApi.new
opts = {
  id: 56, # Integer | 
  name_contains: 'name_contains_example' # String | 
}

begin
  # Returns a list of departments.
  result = api_instance.api_reference_departments_get(opts)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling ReferenceApi->api_reference_departments_get: #{e}"
end
```

#### Using the api_reference_departments_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GovernmentDepartment>>, Integer, Hash)> api_reference_departments_get_with_http_info(opts)

```ruby
begin
  # Returns a list of departments.
  data, status_code, headers = api_instance.api_reference_departments_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GovernmentDepartment>>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling ReferenceApi->api_reference_departments_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name_contains** | **String** |  | [optional] |

### Return type

[**Array&lt;GovernmentDepartment&gt;**](GovernmentDepartment.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_reference_departments_id_logo_get

> api_reference_departments_id_logo_get(id)

Returns department logo.

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::ReferenceApi.new
id = 56 # Integer | Logo by department ID

begin
  # Returns department logo.
  api_instance.api_reference_departments_id_logo_get(id)
rescue ParliamentMembers::ApiError => e
  puts "Error when calling ReferenceApi->api_reference_departments_id_logo_get: #{e}"
end
```

#### Using the api_reference_departments_id_logo_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> api_reference_departments_id_logo_get_with_http_info(id)

```ruby
begin
  # Returns department logo.
  data, status_code, headers = api_instance.api_reference_departments_id_logo_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ParliamentMembers::ApiError => e
  puts "Error when calling ReferenceApi->api_reference_departments_id_logo_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Logo by department ID |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## api_reference_policy_interests_get

> <Array<GenericReferenceData>> api_reference_policy_interests_get

Returns a list of policy interest.

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::ReferenceApi.new

begin
  # Returns a list of policy interest.
  result = api_instance.api_reference_policy_interests_get
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling ReferenceApi->api_reference_policy_interests_get: #{e}"
end
```

#### Using the api_reference_policy_interests_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GenericReferenceData>>, Integer, Hash)> api_reference_policy_interests_get_with_http_info

```ruby
begin
  # Returns a list of policy interest.
  data, status_code, headers = api_instance.api_reference_policy_interests_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GenericReferenceData>>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling ReferenceApi->api_reference_policy_interests_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;GenericReferenceData&gt;**](GenericReferenceData.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

