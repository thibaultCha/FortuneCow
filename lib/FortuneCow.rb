require 'rubygems'
require 'bundler/setup'

require 'ruby_cowsay'

class FortuneCow < Cow

  DEFAULT_OPTS = {
    'fortune' => false,
    'random_cow' => false
  }

  # ====================
  # = Instance Methods =
  # ====================

  def initialize(options)
    options[:random_cow] ? options[:cow] = get_random_type : nil
    super(options)
  end

  # =================
  # = Class Methods =
  # =================

  def self.say(options = DEFAULT_OPTS)
    FortuneCow.new(options).say(options[:text] || "")
  end

  def self.think(options = DEFAULT_OPTS)
    FortuneCow.new(options).think(options[:text] || "")
  end

  # ===================
  # = Private Methods =
  # ===================

  private

  def get_random_type
    return FortuneCow.cows.sample
  end

end
