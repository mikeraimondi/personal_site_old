require 'date'

module Milestone
  attr_accessor :name, :start, :end, :summary, :detail, :url

  def initialize(name)
    @name = name
  end

  def timespan
    @end ||= DateTime.new
    @start - @end
  end
end

# Maybe tags shouldn't be a class? We don't want each tag to be its own object, do we?
class Tag
  attr_accessor :name, :versions

  def initialize(name)
    @name = name
  end

  @versions = []
end

class Experience
  include Milestone

  attr_accessor :organization
end

class Project
  include Milestone

  attr_accessor :tags
end
