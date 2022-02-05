# frozen_string_literal: true

require_relative "psmith_palindrome/version"

class String

  # Returns true for a palindrome, false otherwise.
  def palindrome?()
    processed_content == processed_content.reverse
  end

  # Returns the letters in the string.
  def letters
    chars.select { |char| char.match(/[a-z]/i) }.join
  end

  private

    # Returns content for palindrome testing
    def processed_content
        scan(/[a-z]/i).join.downcase
    end
end
