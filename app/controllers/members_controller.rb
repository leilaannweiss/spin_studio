class MembersController < ApplicationController
  before_action :authenticate_member!, only: :index
  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def show
    @member = Member.find(params[:id])
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to members_path(@member)
    else
      redirect_to new_member_path
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to member_path
    else
      render "edit"
    end
  end

  private

  def member_params
    params.require(:member).permit(
      :first_name,
      :last_name,
      :email,
      :encrypted_password
    )
  end
end
