require 'rails_helper'

describe Project, :type => :model do
    before(:all) do
        @project=Project.new
        puts @project
    end
    context "Given Valid data" do
        describe "is valid" do
            @project.projectName=Forgery(:lorem_ipsum).words(2)
            @project.projectStartDate=Forgery(:date).date
            @project.projectEndDate=Forgery(:date).date
            @project.projectInfo=Forgery(:lorem_ipsum).paragraphs(3)
            @project.current=false
            @project.client=Forgery(:name).company_name
            expect{@project.save!}.to_not raise_error
        end
    end
    context "Given Missing data" do
        describe "is not valid without a name"
        describe "is not valid without a start date"
        describe "is valid without an end date"
        describe "is valid without project info"
    end
end