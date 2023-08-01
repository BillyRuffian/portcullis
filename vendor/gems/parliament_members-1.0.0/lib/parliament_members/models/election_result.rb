=begin
#Members API

#An API which retrieves Members data.

The version of the OpenAPI document: v1
Contact: softwareengineering@parliament.uk
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module ParliamentMembers
  class ElectionResult
    attr_accessor :result

    attr_accessor :is_notional

    attr_accessor :electorate

    attr_accessor :turnout

    attr_accessor :majority

    attr_accessor :winning_party

    attr_accessor :election_title

    attr_accessor :election_date

    attr_accessor :election_id

    attr_accessor :is_general_election

    attr_accessor :constituency_name

    attr_accessor :candidates

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'result' => :'result',
        :'is_notional' => :'isNotional',
        :'electorate' => :'electorate',
        :'turnout' => :'turnout',
        :'majority' => :'majority',
        :'winning_party' => :'winningParty',
        :'election_title' => :'electionTitle',
        :'election_date' => :'electionDate',
        :'election_id' => :'electionId',
        :'is_general_election' => :'isGeneralElection',
        :'constituency_name' => :'constituencyName',
        :'candidates' => :'candidates'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'result' => :'String',
        :'is_notional' => :'Boolean',
        :'electorate' => :'Integer',
        :'turnout' => :'Integer',
        :'majority' => :'Integer',
        :'winning_party' => :'Party',
        :'election_title' => :'String',
        :'election_date' => :'Time',
        :'election_id' => :'Integer',
        :'is_general_election' => :'Boolean',
        :'constituency_name' => :'String',
        :'candidates' => :'Array<ElectionCandidate>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'result',
        :'election_title',
        :'constituency_name',
        :'candidates'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ParliamentMembers::ElectionResult` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ParliamentMembers::ElectionResult`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'result')
        self.result = attributes[:'result']
      end

      if attributes.key?(:'is_notional')
        self.is_notional = attributes[:'is_notional']
      end

      if attributes.key?(:'electorate')
        self.electorate = attributes[:'electorate']
      end

      if attributes.key?(:'turnout')
        self.turnout = attributes[:'turnout']
      end

      if attributes.key?(:'majority')
        self.majority = attributes[:'majority']
      end

      if attributes.key?(:'winning_party')
        self.winning_party = attributes[:'winning_party']
      end

      if attributes.key?(:'election_title')
        self.election_title = attributes[:'election_title']
      end

      if attributes.key?(:'election_date')
        self.election_date = attributes[:'election_date']
      end

      if attributes.key?(:'election_id')
        self.election_id = attributes[:'election_id']
      end

      if attributes.key?(:'is_general_election')
        self.is_general_election = attributes[:'is_general_election']
      end

      if attributes.key?(:'constituency_name')
        self.constituency_name = attributes[:'constituency_name']
      end

      if attributes.key?(:'candidates')
        if (value = attributes[:'candidates']).is_a?(Array)
          self.candidates = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          result == o.result &&
          is_notional == o.is_notional &&
          electorate == o.electorate &&
          turnout == o.turnout &&
          majority == o.majority &&
          winning_party == o.winning_party &&
          election_title == o.election_title &&
          election_date == o.election_date &&
          election_id == o.election_id &&
          is_general_election == o.is_general_election &&
          constituency_name == o.constituency_name &&
          candidates == o.candidates
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [result, is_notional, electorate, turnout, majority, winning_party, election_title, election_date, election_id, is_general_election, constituency_name, candidates].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = ParliamentMembers.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
