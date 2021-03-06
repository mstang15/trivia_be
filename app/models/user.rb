class User < ApplicationRecord
  has_many :games
  has_secure_password
  before_create :assign_session_token
  before_create :set_score

  validates_presence_of :name

  validates :email, presence: true, uniqueness: true

  private

  def assign_session_token
    self.session_token = SessionService.new().get_token
  end

  def set_score
    self[:score] = 0
  end
end
