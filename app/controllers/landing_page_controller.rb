class LandingPageController < ApplicationController
  def welcome
    @skillGroups = SkillGroup.all
    @projects = Project.all
    @summaries = Summary.all
    @educations = Education.all
  end
end
