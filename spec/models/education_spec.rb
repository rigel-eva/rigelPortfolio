require 'rails_helper'

describe Education, type: :model do
  before(:all) do
    @education = Education.new
  end
  context 'Given valid data' do
    it 'is valid' do
      @education.name = Forgery(:lorem_ipsum).words(5)
      @education.startDate = Forgery(:date).date
      @education.endDate = Forgery(:date).date
      @education.incomplete = false
      @education.paperEarned = Forgery(:lorem_ipsum).words(3)
      expect { @education.save! }.to_not raise_error
    end
  end
  context 'Given Missing Data' do
    it 'is not valid without a name' do
      @education.startDate = Forgery(:date).date
      @education.endDate = Forgery(:date).date
      @education.incomplete = false
      @education.paperEarned = Forgery(:lorem_ipsum).words(3)
      expect { @education.save! }.to raise_error
    end
    it 'is not valid without a start date' do
      @education.name = Forgery(:lorem_ipsum).words(5)
      @education.endDate = Forgery(:date).date
      @education.incomplete = false
      @education.paperEarned = Forgery(:lorem_ipsum).words(3)
      expect { @education.save! }.to raise_error
    end
    it 'is valid with an end date, and incomplete is set to true' do
      @education.name = Forgery(:lorem_ipsum).words(5)
      @education.startDate = Forgery(:date).date
      @education.paperEarned = Forgery(:lorem_ipsum).words(3)
      expect(@education.save!).to be true
      expect { @education.incomplete }.to raise_error
    end
    it 'is valid without a paper earned' do
      @education.name = Forgery(:lorem_ipsum).words(5)
      @education.startDate = Forgery(:date).date
      @education.endDate = Forgery(:date).date
      @education.incomplete = false
      expect { @education.save! }.to_not raise_error
    end
  end
end
