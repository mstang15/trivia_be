require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    it {should validate_presence_of(:email)}
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:password)}
    it {should validate_presence_of(:session_token)}
    it {should validate_presence_of(:score)}
  end

end
