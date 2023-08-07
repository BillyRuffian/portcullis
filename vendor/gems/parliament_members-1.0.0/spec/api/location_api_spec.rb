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

# Unit tests for ParliamentMembers::LocationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LocationApi' do
  before do
    # run before each test
    @api_instance = ParliamentMembers::LocationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LocationApi' do
    it 'should create an instance of LocationApi' do
      expect(@api_instance).to be_instance_of(ParliamentMembers::LocationApi)
    end
  end

  # unit tests for api_location_browse_location_type_location_name_get
  # Returns a list of locations, both parent and child
  # @param location_type Location by type of location
  # @param location_name Location by name specified
  # @param [Hash] opts the optional parameters
  # @return [LocationItem]
  describe 'api_location_browse_location_type_location_name_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_location_constituency_id_election_result_election_id_get
  # Returns an election result by constituency and election id
  # @param id Election result by constituency id
  # @param election_id Election result by election id
  # @param [Hash] opts the optional parameters
  # @return [ElectionResultItem]
  describe 'api_location_constituency_id_election_result_election_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_location_constituency_id_election_result_latest_get
  # Returns latest election result by constituency id
  # @param id Latest election result by constituency id
  # @param [Hash] opts the optional parameters
  # @return [ElectionResultItem]
  describe 'api_location_constituency_id_election_result_latest_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_location_constituency_id_election_results_get
  # Returns a list of election results by constituency ID
  # @param id Elections results by constituency ID
  # @param [Hash] opts the optional parameters
  # @return [ElectionResultListItem]
  describe 'api_location_constituency_id_election_results_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_location_constituency_id_geometry_get
  # Returns geometry by constituency ID
  # @param id Geometry by constituency ID
  # @param [Hash] opts the optional parameters
  # @return [StringItem]
  describe 'api_location_constituency_id_geometry_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_location_constituency_id_get
  # Returns a constituency by ID
  # @param id Constituency by ID
  # @param [Hash] opts the optional parameters
  # @return [ConstituencyItem]
  describe 'api_location_constituency_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_location_constituency_id_representations_get
  # Returns a list of representations by constituency ID
  # @param id Representations by constituency ID
  # @param [Hash] opts the optional parameters
  # @return [ConstituencyRepresentationListItem]
  describe 'api_location_constituency_id_representations_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_location_constituency_id_synopsis_get
  # Returns a synopsis by constituency ID
  # @param id Synopsis by constituency ID
  # @param [Hash] opts the optional parameters
  # @return [StringItem]
  describe 'api_location_constituency_id_synopsis_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_location_constituency_search_get
  # Returns a list of constituencies
  # @param [Hash] opts the optional parameters
  # @option opts [String] :search_text Constituencies containing serach term in their name
  # @option opts [Integer] :skip The number of records to skip from the first, default is 0
  # @option opts [Integer] :take The number of records to return, default is 20. Maximum is 20
  # @return [ConstituencyMembersServiceSearchResult]
  describe 'api_location_constituency_search_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end