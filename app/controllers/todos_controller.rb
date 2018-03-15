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
      Name: "Test this app",
      Location: "My Desk",
      Due_Date: "Right Now"
    })
    to_do.save
    render json: to_do.as_json
  end

  def update
    the_id = params[:id]
    to_do = Task.find_by(id: the_id)
    to_do.update({
    Due_Date: "This is done!"
      })
    render json: to_do.as_json
  end

end