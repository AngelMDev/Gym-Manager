class KlassesController < ApplicationController
  def index
    @klasses=Klass.all
  end

  def new
    @klass=Klass.new
  end

  def create
    @klass=Klass.create(klass_params)
  end

  def show
    @klass=Klass.find(params[:id])
    @users=User.all
  end

  def edit
    @klass=Klass.find(params[:id])
  end

  def update
    klass = Klass.find(params[:id])
    klass.update!(klass_params)
    redirect_to klass
  end

  def destroy
    klass = Klass.find(params[:id])
    klass.destroy!
    redirect_to '/klasses'
  end

  private 
  def klass_params
    params.require(:klass).permit(:name,:date,:time,:capacity)
  end

end
