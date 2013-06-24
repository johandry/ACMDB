class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.all
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
  end

  # GET /jobs/new
  def new
    @job = Job.new
    @job_types = JobType.all
    @boxes = Job.all
    @machines = Machine.all
    @systems = System.all
    @priorities = Priority.all
    @employees = Employee.all
    @job_status = JobStatus.all
  end

  # GET /jobs/1/edit
  def edit
    @job_types = JobType.all
    @boxes = Job.all
    @machines = Machine.all
    @systems = System.all
    @priorities = Priority.all
    @employees = Employee.all
    @job_status = JobStatus.all
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render action: 'show', status: :created, location: @job }
      else
        format.html { render action: 'new' }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:name, :job_type_id, :box_name_id, :owner, :command, :machine_id, :permission, :date_condition, :days_of_week, :start_times, :condition, :short_description, :str_out_file, :str_err_file, :alarm_if_fail, :avg_runtime_min, :avg_runtime_sec, :max_runtime_min, :system_id, :description, :priority_id, :critical, :actions, :notes, :submited_by_id, :integer, :created_on, :modified_by_id, :last_modified_on, :update_log, :job_status_id)
    end
end
