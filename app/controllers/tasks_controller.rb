class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = "「#{@task.product_name}」を登録しました。"
      redirect_to @task
    else
      render 'task/new'
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update!(task_params)
    flash[:success] = "「#{@item.product_name}」を編集しました。"
    redirect_to tasks_url
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    flash[:success] = "「#{@task}」を削除しました。"
    redirect_to tasks_url
  end

  private

  def task_params
    params.require(:task).permit(:product_name, :order_number,
                                 :delivery_date, :quantity,
                                 :process, :remarks)
  end
end
