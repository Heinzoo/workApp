class PostulationsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    if current_user.admin?
      @postulations = Postulation.all
    else
      @postulations = Postulation.where(user_id: current_user.id)
    end
  end

  def create
    user_id = params[:user_id]
    work_id = params[:work_id]
    postulation = Postulation.find_by(user_id: user_id, work_id: work_id)

    if postulation
      postulation.destroy
      
      respond_to do |format|
        format.html { redirect_to work_path(work_id) }
        format.json { head :no_content }
      end
    else
      @new_postulation = Postulation.new(user_id: user_id, work_id: work_id)
      respond_to do |format|
        if @new_postulation.save!
          format.html { redirect_to work_path(work_id), notice: 'Postulation was successfully created.' }
        else
          format.html { redirect_to work_path(work_id), notice: 'Postulation was not created.' }
        end
      end
    end
  end
end
