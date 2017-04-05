class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :sel_cont]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.order(created_at: :desc).page params[:page]
    @categories = Category.all
    @contractors = Contractor.order(rating: :desc)
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
    @upload = Upload.new
  end

  def sel_cont
    @task.status = "Выполняется"
    if @task.contractor != nil
      @task.save
    end
  end

  def select_cont
    t = @task
    t.contractor = params[:contractor]
    t.save
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Исполнитель успешно выбран' }
      format.json { head :no_content }
    end
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    @task.client_id = current_user.role_users.first.us_role_id 
    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:client_id, :brand_id, :model_id, :transmission, :vin, :date_start, :date_end, :price, :info, :status, :contractor_id, :image)
    end
end
