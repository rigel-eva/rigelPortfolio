require 'rails_helper'

describe Skill, type: :model do
  before(:all) do
    @skill = Skill.new
  end
  context 'Given Valid data' do
    before(:each) do
      @skillGroup = SkillGroup.new
      SkillGroup.skillType = Forgery(:lorem_ipsum).words(1)
    end
    it 'is valid'
  end
  context 'Given Missing data' do
    before(:each) do
      @skillGroup = SkillGroup.new
      SkillGroup.skillType = Forgery(:lorem_ipsum).words(1)
    end
    it 'is not valid without a skillName'
    it 'is not valid without a Skill_group_id'
  end
end
