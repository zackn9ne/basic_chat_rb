class LinesController < ApplicationController
  def index
    @lines = Line.all
  end  
  
  def show
    @line = Line.find(params[:id])
  end
  
  def new
  end
  
  def create
    @line = Line.new(line_params)
 
    @line.save
    redirect_to @line
  end 
  
  private
  def line_params
    params.require(:line).permit(:username, :message)
  end
end

