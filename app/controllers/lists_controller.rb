class ListsController < ApplicationController
  before_action :find_list, only: %i[edit update destroy]

  def index
    @lists = current_user.lists
  end

  def new
    @list = List.new(user: current_user)
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user

    if @list.save
      flash_success
      redirect_to lists_path
    else
      flash_failed
      render :new
    end
  end

  def edit; end

  def update
    if @list.update(list_params)
      flash_success
      redirect_to lists_path
    else
      flash_failed
      render :edit
    end
  end

  def destroy
    if @list.destroy
      flash_success
    else
      flash_failed
    end

    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(
      :name, :description
    )
  end

  def find_list
    @list = List.find(params[:id])
  end
end
