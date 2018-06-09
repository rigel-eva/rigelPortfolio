require 'rails_helper'

describe Project, :type => :model do
    before(:all) do
        @project=Project.new
        $stderr.puts @project.class
    end
    context "Given Valid data" do
        it "is valid" do
            @project.projectName="HOI"
            @project.projectStartDate=Forgery(:date).date
            @project.projectEndDate=Forgery(:date).date
            @project.projectInfo=Forgery(:lorem_ipsum).paragraphs(3)
            @project.current=false
            @project.client=Forgery(:name).company_name
            expect{@project.save!}.to_not raise_error
        end
    end
    context "Given Missing data" do
        it "is not valid without a name" do
            @project.projectStartDate=Forgery(:date).date
            @project.projectEndDate=Forgery(:date).date
            @project.projectInfo=Forgery(:lorem_ipsum).paragraphs(3)
            @project.current=false
            @project.client=Forgery(:name).company_name
            expect{@project.save!}.to raise_error
        end
        it "is not valid without a start date" do
            @project.projectName=Forgery(:lorem_ipsum).words(2)
            @project.projectEndDate=Forgery(:date).date
            @project.projectInfo=Forgery(:lorem_ipsum).paragraphs(3)
            @project.current=false
            @project.client=Forgery(:name).company_name
            expect{@project.save!}.to raise_error
        end
        it "is valid without an end date" do
            @project.projectName=Forgery(:lorem_ipsum).words(2)
            @project.projectStartDate=Forgery(:date).date
            @project.projectInfo=Forgery(:lorem_ipsum).paragraphs(3)
            @project.client=Forgery(:name).company_name
            expect{@project.save!}.to_not raise_error
        end
        it "is valid without project info" do
            @project.projectName=Forgery(:lorem_ipsum).words(2)
            @project.projectStartDate=Forgery(:date).date
            @project.projectEndDate=Forgery(:date).date
            @project.current=false
            @project.client=Forgery(:name).company_name
            expect{@project.save!}.to_not raise_error
        end
    end
end