class MembersController < ApplicationController
  before_action :authenticate_member!
  def index
    @members = Member.all
  end

end
