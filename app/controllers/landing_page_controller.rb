class LandingPageController < ApplicationController
  def welcome
    @skillGroups=SkillGroup.all;
  end
end
