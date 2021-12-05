# frozen_string_literal: true

require_relative "forty_two/version"

module FortyTwo
  def forty_two?
    self == 42
  end
end

class Integer
  include FortyTwo
end
