# frozen_string_literal: true

require_relative "forty_two/version"

class Integer
  def forty_two?
    self == 42
  end
end
