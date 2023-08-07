# parliament_written_questions

ParliamentWrittenQuestions - the Ruby gem for the Written Questions Service API

Data around written questions and answers, as well as written ministerial statements.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://www.parliament.uk](https://www.parliament.uk)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build parliament_written_questions.gemspec
```

Then either install the gem locally:

```shell
gem install ./parliament_written_questions-1.0.0.gem
```

(for development, run `gem install --dev ./parliament_written_questions-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'parliament_written_questions', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'parliament_written_questions', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'parliament_written_questions'

api_instance = ParliamentWrittenQuestions::DailyReportsApi.new
opts = {
  date_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Daily report with report date on or after the date specified. Date format yyyy-mm-dd
  date_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Daily report with report date on or before the date specified. Date format yyyy-mm-dd
  house: ParliamentWrittenQuestions::HouseEnum::BICAMERAL, # HouseEnum | Daily report relating to the House specified. Defaults to Bicameral
  skip: 56, # Integer | Number of records to skip, default is 0
  take: 56 # Integer | Number of records to take, default is 20
}

begin
  #Returns a list of daily reports
  result = api_instance.api_dailyreports_dailyreports_get(opts)
  p result
rescue ParliamentWrittenQuestions::ApiError => e
  puts "Exception when calling DailyReportsApi->api_dailyreports_dailyreports_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ParliamentWrittenQuestions::DailyReportsApi* | [**api_dailyreports_dailyreports_get**](docs/DailyReportsApi.md#api_dailyreports_dailyreports_get) | **GET** /api/dailyreports/dailyreports | Returns a list of daily reports
*ParliamentWrittenQuestions::WrittenQuestionsApi* | [**api_writtenquestions_questions_date_uin_get**](docs/WrittenQuestionsApi.md#api_writtenquestions_questions_date_uin_get) | **GET** /api/writtenquestions/questions/{date}/{uin} | Returns a written question
*ParliamentWrittenQuestions::WrittenQuestionsApi* | [**api_writtenquestions_questions_get**](docs/WrittenQuestionsApi.md#api_writtenquestions_questions_get) | **GET** /api/writtenquestions/questions | Returns a list of written questions
*ParliamentWrittenQuestions::WrittenQuestionsApi* | [**api_writtenquestions_questions_id_get**](docs/WrittenQuestionsApi.md#api_writtenquestions_questions_id_get) | **GET** /api/writtenquestions/questions/{id} | Returns a written question
*ParliamentWrittenQuestions::WrittenStatementsApi* | [**api_writtenstatements_statements_date_uin_get**](docs/WrittenStatementsApi.md#api_writtenstatements_statements_date_uin_get) | **GET** /api/writtenstatements/statements/{date}/{uin} | Returns a written statemnet
*ParliamentWrittenQuestions::WrittenStatementsApi* | [**api_writtenstatements_statements_get**](docs/WrittenStatementsApi.md#api_writtenstatements_statements_get) | **GET** /api/writtenstatements/statements | Returns a list of written statements
*ParliamentWrittenQuestions::WrittenStatementsApi* | [**api_writtenstatements_statements_id_get**](docs/WrittenStatementsApi.md#api_writtenstatements_statements_id_get) | **GET** /api/writtenstatements/statements/{id} | Returns a written statement


## Documentation for Models

 - [ParliamentWrittenQuestions::Answered](docs/Answered.md)
 - [ParliamentWrittenQuestions::AttachmentViewModel](docs/AttachmentViewModel.md)
 - [ParliamentWrittenQuestions::DailyReportViewModel](docs/DailyReportViewModel.md)
 - [ParliamentWrittenQuestions::DailyReportViewModelItem](docs/DailyReportViewModelItem.md)
 - [ParliamentWrittenQuestions::DailyReportViewModelSearchResult](docs/DailyReportViewModelSearchResult.md)
 - [ParliamentWrittenQuestions::GroupedQuestionViewModel](docs/GroupedQuestionViewModel.md)
 - [ParliamentWrittenQuestions::HouseEnum](docs/HouseEnum.md)
 - [ParliamentWrittenQuestions::Link](docs/Link.md)
 - [ParliamentWrittenQuestions::LinkedStatements](docs/LinkedStatements.md)
 - [ParliamentWrittenQuestions::MemberViewModel](docs/MemberViewModel.md)
 - [ParliamentWrittenQuestions::ProblemDetails](docs/ProblemDetails.md)
 - [ParliamentWrittenQuestions::QuestionStatusEnum](docs/QuestionStatusEnum.md)
 - [ParliamentWrittenQuestions::QuestionsViewModel](docs/QuestionsViewModel.md)
 - [ParliamentWrittenQuestions::QuestionsViewModelItem](docs/QuestionsViewModelItem.md)
 - [ParliamentWrittenQuestions::QuestionsViewModelSearchResult](docs/QuestionsViewModelSearchResult.md)
 - [ParliamentWrittenQuestions::StatementLinkTypeEnum](docs/StatementLinkTypeEnum.md)
 - [ParliamentWrittenQuestions::StatementsViewModel](docs/StatementsViewModel.md)
 - [ParliamentWrittenQuestions::StatementsViewModelItem](docs/StatementsViewModelItem.md)
 - [ParliamentWrittenQuestions::StatementsViewModelSearchResult](docs/StatementsViewModelSearchResult.md)


## Documentation for Authorization

Endpoints do not require authorization.
