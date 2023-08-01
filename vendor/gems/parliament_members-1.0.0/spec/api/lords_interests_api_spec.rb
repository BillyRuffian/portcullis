=begin
#Members API

#An API which retrieves Members data.

The version of the OpenAPI document: v1
Contact: softwareengineering@parliament.uk
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for ParliamentMembers::LordsInterestsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LordsInterestsApi' do
  before do
    # run before each test
    @api_instance = ParliamentMembers::LordsInterestsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LordsInterestsApi' do
    it 'should create an instance of LordsInterestsApi' do
      expect(@api_instance).to be_instance_of(ParliamentMembers::LordsInterestsApi)
    end
  end

  # unit tests for api_lords_interests_register_get
  # Returns a list of registered interests
  # @param [Hash] opts the optional parameters
  # @option opts [String] :search_term Registered interests containing search term
  # @option opts [Integer] :page Page of results to return, default 0. Results per page 20.
  # @option opts [Boolean] :include_deleted Registered interests that have been deleted
  # @return [MembersInterestsMembersServiceSearchResult]
  describe 'api_lords_interests_register_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_lords_interests_staff_get
  # Returns a list of staff
  # @param [Hash] opts the optional parameters
  # @option opts [String] :search_term Staff containing search term
  # @option opts [Integer] :page Page of results to return, default 0. Results per page 20.
  # @return [MembersStaffMembersServiceSearchResult]
  describe 'api_lords_interests_staff_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
