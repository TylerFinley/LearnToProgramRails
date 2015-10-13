class TopicsController < ApplicationController
  def new
    @section = Section.find(params[:section_id])
    @topic = @section.topics.new
  end

  def show
    @section = Section.find(params[:section_id])
    @topic = Topic.find(params[:id])
    render :show
  end

  def create
    @section = Section.find(params[:section_id])
    @topic = @section.topics.new(topic_params)
    if @topic.save
      redirect_to section_path(@topic.section)
    else
      render :new
    end
  end

  def edit
    @section = Section.find(params[:section_id])
    @topic = @section.topics.find(params[:id])
    render :edit
  end

  def update
    @topic = Topic.find(params[:section_id])
    if @topic.update(topic_params)
      redirect_to sections_path
    else
      render :edit
    end
  end

  def destroy
    @topic = Topic.find(params[:section_id])
    @topic.destroy
    redirect_to sections_path
  end
end

  private
  def topic_params
    params.require(:topic).permit(:description)
  end
