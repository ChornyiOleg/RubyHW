# frozen_string_literal: true

class Integer < Numeric; end

# Forty Two for extending Integer

# rubocop:disable Style/Documentation

class Integer
  def forty_two?
    self == 42
  end
end
