class ClassVideosController < ApplicationController
  def new
    @class_video = ClassVideo.new
  end

  def create
    @class_videos_params = params.require(:class_video).permit(:name, :description, :course_id)
    @class_video = ClassVideo.create(@class_videos_params)

    if @class_video.save
      redirect_to class_videos_index_path, notice: 'Clase creada satisfactoriamente'
    else
      redirect_to class_videos_index_path, notice: 'Error'
    end
  end


  def index
    @class_video = ClassVideo.all
  end

  def show
    @class_video = ClassVideo.find(params[:id])
  end

  def edit
    @class_video = ClassVideo.find(params[:id])
  end

  def update
    @class_video = ClassVideo.find(params[:id])
    @class_videos_new_params = params.require(:class_video).permit(:name, :description, :course_id)
    if @class_video.update(@class_videos_new_params)
      redirect_to class_videos_index_path, notice: 'Clase editada correctamente'
    else
      redirect_to class_videos_index_path, notice: 'Error editando la clase'
    end
  end

  def delete
    @class_video = ClassVideo.find(params[:id])
    @class_video.destroy
    redirect_to class_videos_index_path, notice: 'Clase eliminada correctamente'
  end
end
