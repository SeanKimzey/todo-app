class TodosController < ApplicationController
  def index
    to_do_list = Task.all.order(:id)
    render json: to_do_list.as_json
  end

  def show
    the_id = params[:id]
    to_do = Task.find_by(id: the_id)
    render json: to_do.as_json
  end
  
  def create
    to_do = Task.new({
      Name: "Work Out",
      Location: "Row Machine",
      Due_Date: "11:20am"
    })
    to_do.save
    render json: to_do.as_json
  end

  def update
    the_id = params[:id]
    to_do = Task.find_by(id: the_id)
    to_do.update({
      Name: "Watch"
      })
    render json: to_do.as_json
  end

  def destroy
    the_id = params[:id]
    to_do = Task.find_by(id: the_id)
    to_do.destroy
    render json: {message: "This task has been deleted"}
  end

end

