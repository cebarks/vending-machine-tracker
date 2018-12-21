require 'rails_helper'

describe Machine, type: :model do
  describe 'validations' do
    it { should validate_presence_of :location }
    it { should belong_to :owner }
  end
  describe "instance methods" do
    it ".average_snack_price" do
      
    end
  end
end
