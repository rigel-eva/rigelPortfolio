require 'rails_helper'

describe Project, :type => :model do
    before(:all) do
        @project=Project.new
    end
    context "Given Valid data" do
        describe "is valid"
    end
    context "Given Missing data" do
        describe "is not valid without a name"
        describe "is not valid without a start date"
        describe "is valid without an end date"
        describe "is valid without project info"
    end
end