# ParliamentCommonsVotes::DivisionsApi

All URIs are relative to *http://commonsvotes-api.parliament.uk*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**divisions_get_division_by_id**](DivisionsApi.md#divisions_get_division_by_id) | **GET** /data/division/{divisionId}.{format} | Return a Division |
| [**divisions_get_divisions_groups_by_party**](DivisionsApi.md#divisions_get_divisions_groups_by_party) | **GET** /data/divisions.{format}/groupedbyparty | Return Divisions results grouped by party |
| [**divisions_get_voting_records_for_member**](DivisionsApi.md#divisions_get_voting_records_for_member) | **GET** /data/divisions.{format}/membervoting | Return voting records for a Member |
| [**divisions_search_divisions**](DivisionsApi.md#divisions_search_divisions) | **GET** /data/divisions.{format}/search | Return a list of Divisions |
| [**divisions_search_total_results**](DivisionsApi.md#divisions_search_total_results) | **GET** /data/divisions.{format}/searchTotalResults | Return total results count |


## divisions_get_division_by_id

> <PublishedDivision> divisions_get_division_by_id(division_id, format)

Return a Division

Single Division which has the specified Id

### Examples

```ruby
require 'time'
require 'parliament_commons_votes'

api_instance = ParliamentCommonsVotes::DivisionsApi.new
division_id = 56 # Integer | Id number of a Division whose records are to be returned
format = 'format_example' # String | xml or json

begin
  # Return a Division
  result = api_instance.divisions_get_division_by_id(division_id, format)
  p result
rescue ParliamentCommonsVotes::ApiError => e
  puts "Error when calling DivisionsApi->divisions_get_division_by_id: #{e}"
end
```

#### Using the divisions_get_division_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublishedDivision>, Integer, Hash)> divisions_get_division_by_id_with_http_info(division_id, format)

```ruby
begin
  # Return a Division
  data, status_code, headers = api_instance.divisions_get_division_by_id_with_http_info(division_id, format)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublishedDivision>
rescue ParliamentCommonsVotes::ApiError => e
  puts "Error when calling DivisionsApi->divisions_get_division_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **division_id** | **Integer** | Id number of a Division whose records are to be returned |  |
| **format** | **String** | xml or json |  |

### Return type

[**PublishedDivision**](PublishedDivision.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/json


## divisions_get_divisions_groups_by_party

> <Array<DivisionGroupedByParty>> divisions_get_divisions_groups_by_party(format, opts)

Return Divisions results grouped by party

Division results which meet the specified criteria grouped by parties

### Examples

```ruby
require 'time'
require 'parliament_commons_votes'

api_instance = ParliamentCommonsVotes::DivisionsApi.new
format = 'format_example' # String | xml or json
opts = {
  query_parameters_search_term: 'query_parameters_search_term_example', # String | Divisions containing search term within title or number
  query_parameters_member_id: 56, # Integer | Divisions returning Member with Member ID voting records
  query_parameters_include_when_member_was_teller: true, # Boolean | Divisions where member was a teller as well as if they actually voted
  query_parameters_start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Divisions where division date in one or after date provided. Date format is yyyy-MM-dd
  query_parameters_end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Divisions where division date in one or before date provided. Date format is yyyy-MM-dd
  query_parameters_division_number: 56 # Integer | Division Number - as specified by the House, unique within a session. This is different to the division id which uniquely identifies a division in this system and is passed to the GET division endpoint
}

begin
  # Return Divisions results grouped by party
  result = api_instance.divisions_get_divisions_groups_by_party(format, opts)
  p result
rescue ParliamentCommonsVotes::ApiError => e
  puts "Error when calling DivisionsApi->divisions_get_divisions_groups_by_party: #{e}"
end
```

#### Using the divisions_get_divisions_groups_by_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DivisionGroupedByParty>>, Integer, Hash)> divisions_get_divisions_groups_by_party_with_http_info(format, opts)

```ruby
begin
  # Return Divisions results grouped by party
  data, status_code, headers = api_instance.divisions_get_divisions_groups_by_party_with_http_info(format, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DivisionGroupedByParty>>
rescue ParliamentCommonsVotes::ApiError => e
  puts "Error when calling DivisionsApi->divisions_get_divisions_groups_by_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | xml or json |  |
| **query_parameters_search_term** | **String** | Divisions containing search term within title or number | [optional] |
| **query_parameters_member_id** | **Integer** | Divisions returning Member with Member ID voting records | [optional] |
| **query_parameters_include_when_member_was_teller** | **Boolean** | Divisions where member was a teller as well as if they actually voted | [optional] |
| **query_parameters_start_date** | **Time** | Divisions where division date in one or after date provided. Date format is yyyy-MM-dd | [optional] |
| **query_parameters_end_date** | **Time** | Divisions where division date in one or before date provided. Date format is yyyy-MM-dd | [optional] |
| **query_parameters_division_number** | **Integer** | Division Number - as specified by the House, unique within a session. This is different to the division id which uniquely identifies a division in this system and is passed to the GET division endpoint | [optional] |

### Return type

[**Array&lt;DivisionGroupedByParty&gt;**](DivisionGroupedByParty.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/json


## divisions_get_voting_records_for_member

> <Array<MemberVotingRecord>> divisions_get_voting_records_for_member(format, query_parameters_member_id, opts)

Return voting records for a Member

List of voting records for a member which meet the specified criteria.

### Examples

```ruby
require 'time'
require 'parliament_commons_votes'

api_instance = ParliamentCommonsVotes::DivisionsApi.new
format = 'format_example' # String | xml or json
query_parameters_member_id = 56 # Integer | Id number of a Member whose voting records are to be returned
opts = {
  query_parameters_skip: 56, # Integer | The number of records to skip. Default is 0
  query_parameters_take: 56, # Integer | The number of records to return per page. Default is 25
  query_parameters_search_term: 'query_parameters_search_term_example', # String | Divisions containing search term within title or number
  query_parameters_include_when_member_was_teller: true, # Boolean | Divisions where member was a teller as well as if they actually voted
  query_parameters_start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Divisions where division date in one or after date provided. Date format is yyyy-MM-dd
  query_parameters_end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Divisions where division date in one or before date provided. Date format is yyyy-MM-dd
  query_parameters_division_number: 56 # Integer | Division Number - as specified by the House, unique within a session. This is different to the division id which uniquely identifies a division in this system and is passed to the GET division endpoint
}

begin
  # Return voting records for a Member
  result = api_instance.divisions_get_voting_records_for_member(format, query_parameters_member_id, opts)
  p result
rescue ParliamentCommonsVotes::ApiError => e
  puts "Error when calling DivisionsApi->divisions_get_voting_records_for_member: #{e}"
end
```

#### Using the divisions_get_voting_records_for_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MemberVotingRecord>>, Integer, Hash)> divisions_get_voting_records_for_member_with_http_info(format, query_parameters_member_id, opts)

```ruby
begin
  # Return voting records for a Member
  data, status_code, headers = api_instance.divisions_get_voting_records_for_member_with_http_info(format, query_parameters_member_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MemberVotingRecord>>
rescue ParliamentCommonsVotes::ApiError => e
  puts "Error when calling DivisionsApi->divisions_get_voting_records_for_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | xml or json |  |
| **query_parameters_member_id** | **Integer** | Id number of a Member whose voting records are to be returned |  |
| **query_parameters_skip** | **Integer** | The number of records to skip. Default is 0 | [optional] |
| **query_parameters_take** | **Integer** | The number of records to return per page. Default is 25 | [optional] |
| **query_parameters_search_term** | **String** | Divisions containing search term within title or number | [optional] |
| **query_parameters_include_when_member_was_teller** | **Boolean** | Divisions where member was a teller as well as if they actually voted | [optional] |
| **query_parameters_start_date** | **Time** | Divisions where division date in one or after date provided. Date format is yyyy-MM-dd | [optional] |
| **query_parameters_end_date** | **Time** | Divisions where division date in one or before date provided. Date format is yyyy-MM-dd | [optional] |
| **query_parameters_division_number** | **Integer** | Division Number - as specified by the House, unique within a session. This is different to the division id which uniquely identifies a division in this system and is passed to the GET division endpoint | [optional] |

### Return type

[**Array&lt;MemberVotingRecord&gt;**](MemberVotingRecord.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/json


## divisions_search_divisions

> <Array<PublishedDivision>> divisions_search_divisions(format, opts)

Return a list of Divisions

List of Divisions which meet the specified criteria

### Examples

```ruby
require 'time'
require 'parliament_commons_votes'

api_instance = ParliamentCommonsVotes::DivisionsApi.new
format = 'format_example' # String | json or xml
opts = {
  query_parameters_skip: 56, # Integer | The number of records to skip. Default is 0
  query_parameters_take: 56, # Integer | The number of records to return per page. Default is 25
  query_parameters_search_term: 'query_parameters_search_term_example', # String | Divisions containing search term within title or number
  query_parameters_member_id: 56, # Integer | Divisions returning Member with Member ID voting records
  query_parameters_include_when_member_was_teller: true, # Boolean | Divisions where member was a teller as well as if they actually voted
  query_parameters_start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Divisions where division date in one or after date provided. Date format is yyyy-MM-dd
  query_parameters_end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Divisions where division date in one or before date provided. Date format is yyyy-MM-dd
  query_parameters_division_number: 56 # Integer | Division Number - as specified by the House, unique within a session. This is different to the division id which uniquely identifies a division in this system and is passed to the GET division endpoint
}

begin
  # Return a list of Divisions
  result = api_instance.divisions_search_divisions(format, opts)
  p result
rescue ParliamentCommonsVotes::ApiError => e
  puts "Error when calling DivisionsApi->divisions_search_divisions: #{e}"
end
```

#### Using the divisions_search_divisions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PublishedDivision>>, Integer, Hash)> divisions_search_divisions_with_http_info(format, opts)

```ruby
begin
  # Return a list of Divisions
  data, status_code, headers = api_instance.divisions_search_divisions_with_http_info(format, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PublishedDivision>>
rescue ParliamentCommonsVotes::ApiError => e
  puts "Error when calling DivisionsApi->divisions_search_divisions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | json or xml |  |
| **query_parameters_skip** | **Integer** | The number of records to skip. Default is 0 | [optional] |
| **query_parameters_take** | **Integer** | The number of records to return per page. Default is 25 | [optional] |
| **query_parameters_search_term** | **String** | Divisions containing search term within title or number | [optional] |
| **query_parameters_member_id** | **Integer** | Divisions returning Member with Member ID voting records | [optional] |
| **query_parameters_include_when_member_was_teller** | **Boolean** | Divisions where member was a teller as well as if they actually voted | [optional] |
| **query_parameters_start_date** | **Time** | Divisions where division date in one or after date provided. Date format is yyyy-MM-dd | [optional] |
| **query_parameters_end_date** | **Time** | Divisions where division date in one or before date provided. Date format is yyyy-MM-dd | [optional] |
| **query_parameters_division_number** | **Integer** | Division Number - as specified by the House, unique within a session. This is different to the division id which uniquely identifies a division in this system and is passed to the GET division endpoint | [optional] |

### Return type

[**Array&lt;PublishedDivision&gt;**](PublishedDivision.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/json


## divisions_search_total_results

> Integer divisions_search_total_results(format, opts)

Return total results count

Total count of Divisions meeting the specified criteria

### Examples

```ruby
require 'time'
require 'parliament_commons_votes'

api_instance = ParliamentCommonsVotes::DivisionsApi.new
format = 'format_example' # String | json or xml
opts = {
  query_parameters_search_term: 'query_parameters_search_term_example', # String | Divisions containing search term within title or number
  query_parameters_member_id: 56, # Integer | Divisions returning Member with Member ID voting records
  query_parameters_include_when_member_was_teller: true, # Boolean | Divisions where member was a teller as well as if they actually voted
  query_parameters_start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Divisions where division date in one or after date provided. Date format is yyyy-MM-dd
  query_parameters_end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Divisions where division date in one or before date provided. Date format is yyyy-MM-dd
  query_parameters_division_number: 56 # Integer | Division Number - as specified by the House, unique within a session. This is different to the division id which uniquely identifies a division in this system and is passed to the GET division endpoint
}

begin
  # Return total results count
  result = api_instance.divisions_search_total_results(format, opts)
  p result
rescue ParliamentCommonsVotes::ApiError => e
  puts "Error when calling DivisionsApi->divisions_search_total_results: #{e}"
end
```

#### Using the divisions_search_total_results_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> divisions_search_total_results_with_http_info(format, opts)

```ruby
begin
  # Return total results count
  data, status_code, headers = api_instance.divisions_search_total_results_with_http_info(format, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue ParliamentCommonsVotes::ApiError => e
  puts "Error when calling DivisionsApi->divisions_search_total_results_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | json or xml |  |
| **query_parameters_search_term** | **String** | Divisions containing search term within title or number | [optional] |
| **query_parameters_member_id** | **Integer** | Divisions returning Member with Member ID voting records | [optional] |
| **query_parameters_include_when_member_was_teller** | **Boolean** | Divisions where member was a teller as well as if they actually voted | [optional] |
| **query_parameters_start_date** | **Time** | Divisions where division date in one or after date provided. Date format is yyyy-MM-dd | [optional] |
| **query_parameters_end_date** | **Time** | Divisions where division date in one or before date provided. Date format is yyyy-MM-dd | [optional] |
| **query_parameters_division_number** | **Integer** | Division Number - as specified by the House, unique within a session. This is different to the division id which uniquely identifies a division in this system and is passed to the GET division endpoint | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/json

