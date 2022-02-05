# frozen_string_literal: true

require_relative "psmith_palindrome/version"

module PsmithPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?()
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing
    def processed_content
        to_s.scan(/[a-z]*\d*/i).join.downcase
    end
end
class String
  include PsmithPalindrome
end

class Integer
  include PsmithPalindrome
end
