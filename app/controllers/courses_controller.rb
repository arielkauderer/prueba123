class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
    @courses_params = params.require(:course).permit(:name, :description, :category)
    @course = Course.create(@courses_params)

    if @course.save
      redirect_to courses_index_path, notice: 'Curso creado satisfactoriamente'
    else
      redirect_to courses_index_path, notice: 'Error'
    end
  end

  

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @courses_new_params = params.require(:course).permit(:name, :description, :category)
    if @course.update(@courses_new_params)
      redirect_to courses_index_path, notice: 'Curso editado correctamente'
    else
      redirect_to courses_index_path, notice: 'Error editando el curso'
    end
  end

  def delete
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_index_path, notice: 'Curso eliminado correctamente'
  end
end