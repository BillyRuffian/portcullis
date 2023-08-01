# ParliamentMembers::PartiesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_parties_get_active_house_get**](PartiesApi.md#api_parties_get_active_house_get) | **GET** /api/Parties/GetActive/{house} | Returns a list of current parties with at least one active member. |
| [**api_parties_lords_by_type_for_date_get**](PartiesApi.md#api_parties_lords_by_type_for_date_get) | **GET** /api/Parties/LordsByType/{forDate} | Returns the composition of the House of Lords by peerage type. |
| [**api_parties_state_of_the_parties_house_for_date_get**](PartiesApi.md#api_parties_state_of_the_parties_house_for_date_get) | **GET** /api/Parties/StateOfTheParties/{house}/{forDate} | Returns current state of parties |


## api_parties_get_active_house_get

> <PartyMembersServiceSearchResult> api_parties_get_active_house_get(house)

Returns a list of current parties with at least one active member.

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::PartiesApi.new
house = ParliamentMembers::House::N1 # House | Current parties by house

begin
  # Returns a list of current parties with at least one active member.
  result = api_instance.api_parties_get_active_house_get(house)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling PartiesApi->api_parties_get_active_house_get: #{e}"
end
```

#### Using the api_parties_get_active_house_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PartyMembersServiceSearchResult>, Integer, Hash)> api_parties_get_active_house_get_with_http_info(house)

```ruby
begin
  # Returns a list of current parties with at least one active member.
  data, status_code, headers = api_instance.api_parties_get_active_house_get_with_http_info(house)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PartyMembersServiceSearchResult>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling PartiesApi->api_parties_get_active_house_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **house** | [**House**](.md) | Current parties by house |  |

### Return type

[**PartyMembersServiceSearchResult**](PartyMembersServiceSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_parties_lords_by_type_for_date_get

> <LordsByTypeMembersServiceSearchResult> api_parties_lords_by_type_for_date_get(for_date)

Returns the composition of the House of Lords by peerage type.

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::PartiesApi.new
for_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Composition of the Lords for date specified.

begin
  # Returns the composition of the House of Lords by peerage type.
  result = api_instance.api_parties_lords_by_type_for_date_get(for_date)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling PartiesApi->api_parties_lords_by_type_for_date_get: #{e}"
end
```

#### Using the api_parties_lords_by_type_for_date_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LordsByTypeMembersServiceSearchResult>, Integer, Hash)> api_parties_lords_by_type_for_date_get_with_http_info(for_date)

```ruby
begin
  # Returns the composition of the House of Lords by peerage type.
  data, status_code, headers = api_instance.api_parties_lords_by_type_for_date_get_with_http_info(for_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LordsByTypeMembersServiceSearchResult>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling PartiesApi->api_parties_lords_by_type_for_date_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **for_date** | **Time** | Composition of the Lords for date specified. |  |

### Return type

[**LordsByTypeMembersServiceSearchResult**](LordsByTypeMembersServiceSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_parties_state_of_the_parties_house_for_date_get

> <PartySeatCountMembersServiceSearchResult> api_parties_state_of_the_parties_house_for_date_get(house, for_date)

Returns current state of parties

### Examples

```ruby
require 'time'
require 'parliament_members'

api_instance = ParliamentMembers::PartiesApi.new
house = ParliamentMembers::House::N1 # House | State of parties in Commons or Lords.
for_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | State of parties for the date specified

begin
  # Returns current state of parties
  result = api_instance.api_parties_state_of_the_parties_house_for_date_get(house, for_date)
  p result
rescue ParliamentMembers::ApiError => e
  puts "Error when calling PartiesApi->api_parties_state_of_the_parties_house_for_date_get: #{e}"
end
```

#### Using the api_parties_state_of_the_parties_house_for_date_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PartySeatCountMembersServiceSearchResult>, Integer, Hash)> api_parties_state_of_the_parties_house_for_date_get_with_http_info(house, for_date)

```ruby
begin
  # Returns current state of parties
  data, status_code, headers = api_instance.api_parties_state_of_the_parties_house_for_date_get_with_http_info(house, for_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PartySeatCountMembersServiceSearchResult>
rescue ParliamentMembers::ApiError => e
  puts "Error when calling PartiesApi->api_parties_state_of_the_parties_house_for_date_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **house** | [**House**](.md) | State of parties in Commons or Lords. |  |
| **for_date** | **Time** | State of parties for the date specified |  |

### Return type

[**PartySeatCountMembersServiceSearchResult**](PartySeatCountMembersServiceSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

