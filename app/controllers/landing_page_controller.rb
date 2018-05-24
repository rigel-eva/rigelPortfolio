class LandingPageController < ApplicationController
  def welcome
    @skillGroups=SkillGroup.all;
    @projects=Project.all;
  end
end
