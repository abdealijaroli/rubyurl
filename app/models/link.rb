class Link < ApplicationRecord
  before_create :generate_short

  private

  def generate_short
    self.short = SecureRandom.alphanumeric(6)
  end
end
