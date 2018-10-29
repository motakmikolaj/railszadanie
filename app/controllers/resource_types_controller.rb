class ResourceTypesController < ApplicationController
  def index
    @recource_type = RecourceType.all
  end

  def show
    @recource_type = RecourceType.find(params[:id])
  end

  private

  def recource_type_params
    params.require(:recource_types).permit(:name, :description)
  end
end
