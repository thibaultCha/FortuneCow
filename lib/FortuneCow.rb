# FortuneCow
# author: thibaultcha

class FortuneCow < Cow

  # ====================
  # = Instance Methods =
  # ====================

  def initialize(options = {})
    options[:random_cow] ? options[:cow] = get_random_type : nil
    super(options)
  end

  def say_fortune
    self.say(get_fortune)
  end

  # =================
  # = Class Methods =
  # =================

  def self.say(options = {})
    FortuneCow.new(options).say(options[:text] || "")
  end

  def self.think(options = {})
    FortuneCow.new(options).think(options[:text] || "")
  end

  def self.say_fortune(options = {})
    FortuneCow.new(options).say_fortune
  end

  def self.random
    FortuneCow.new({ :random_cow => true }).say_fortune
  end

  # ===================
  # = Private Methods =
  # ===================

  private

  def get_random_type
    return FortuneCow.cows.sample
  end

  def get_fortune
    return GoldMine::DB.new.random.content
  end

end
