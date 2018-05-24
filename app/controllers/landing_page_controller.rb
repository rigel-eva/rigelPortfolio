class LandingPageController < ApplicationController
  def welcome
    @skillGroups=SkillGroup.all;
    @projects=Project.all;
    @summaries=Summary.all;
  end
end
