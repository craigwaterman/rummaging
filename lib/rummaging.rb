require_relative "rummaging/version"

module Rummaging

  class << self
    def inspect
      "Rummaging #{Rummaging::VERSION} on #{Rummaging::RELEASE_DATE}"
    end
  end

end
