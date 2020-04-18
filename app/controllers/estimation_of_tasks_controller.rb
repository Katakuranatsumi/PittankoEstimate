class EstimationOfTasksController < ApplicationController
  before_action :set_estimation_of_task, only: [:show, :edit, :update, :destroy]

  # GET /estimation_of_tasks
  # GET /estimation_of_tasks.json
  def index
    @estimation_of_tasks = EstimationOfTask.all
  end

  # GET /estimation_of_tasks/1
  # GET /estimation_of_tasks/1.json
  def show
  end

  # GET /estimation_of_tasks/new
  def new
    @estimation_of_task = EstimationOfTask.new
  end

  # GET /estimation_of_tasks/1/edit
  def edit
  end

  # POST /estimation_of_tasks
  # POST /estimation_of_tasks.json
  def create
    @estimation_of_task = EstimationOfTask.new(estimation_of_task_params)

    respond_to do |format|
      if @estimation_of_task.save
        format.html { redirect_to @estimation_of_task, notice: "タスク見積りID:#{@estimation_of_task.id}「#{@estimation_of_task.title}」を登録しました。" }
        format.json { render :show, status: :created, location: @estimation_of_task }
      else
        format.html { render :new }
        format.json { render json: @estimation_of_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estimation_of_tasks/1
  # PATCH/PUT /estimation_of_tasks/1.json
  def update
    respond_to do |format|
      if @estimation_of_task.update(estimation_of_task_params)
        format.html { redirect_to @estimation_of_task, notice: "タスク見積りID:#{@estimation_of_task.id}「#{@estimation_of_task.title}」を更新しました。" }
        format.json { render :show, status: :ok, location: @estimation_of_task }
      else
        format.html { render :edit }
        format.json { render json: @estimation_of_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estimation_of_tasks/1
  # DELETE /estimation_of_tasks/1.json
  def destroy
    @estimation_of_task.destroy
    respond_to do |format|
      format.html { redirect_to estimation_of_tasks_url, notice: 'Estimation of task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estimation_of_task
      @estimation_of_task = EstimationOfTask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estimation_of_task_params
      params.require(:estimation_of_task).permit(:title, :detail, :task_type)
    end
end
