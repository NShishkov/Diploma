class ContractorsController < ApplicationController
  before_action :set_contractor, only: [:show, :edit, :update, :destroy]

  # GET /contractors
  # GET /contractors.json
  def index
    @contractors = Contractor.order(rating: :desc).page params[:page]
    @categories = Category.all
  end


  # GET /contractors/1/cabinet
  def cabinet

  end

  # GET /contractors/1
  # GET /contractors/1.json
  def show
    @cont_reviews = @contractor.reviews
    @services = @contractor.services
  end

  # GET /contractors/new
  def new
    @contractor = Contractor.new
    
  end

  # GET /contractors/1/edit
  def edit
  end

  # POST /contractors
  # POST /contractors.json
  def create
    @contractor = Contractor.new(contractor_params)
    r1 = Role.where(:name => "contractor").first
    if current_user.role_users.size != 0
      us_id = RoleUser.where(user_id: current_user.id).first.us_role_id
      RoleUser.delete_all(user_id: current_user.id)
      Client.delete_all(id: us_id)
    end
    RoleUser.create(:role => r1, :user => current_user, :us_role => @contractor)
    respond_to do |format|
      if @contractor.save
        format.html { redirect_to @contractor, notice: 'Contractor was successfully created.' }
        format.json { render :show, status: :created, location: @contractor }
      else
        format.html { render :new }
        format.json { render json: @contractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contractors/1
  # PATCH/PUT /contractors/1.json
  def update
    respond_to do |format|
      if @contractor.update(contractor_params)
        format.html { redirect_to @contractor, notice: 'Contractor was successfully updated.' }
        format.json { render :show, status: :ok, location: @contractor }
      else
        format.html { render :edit }
        format.json { render json: @contractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contractors/1
  # DELETE /contractors/1.json
  def destroy
    @contractor.destroy
    respond_to do |format|
      format.html { redirect_to contractors_url, notice: 'Contractor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contractor
      @contractor = Contractor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contractor_params
      params.require(:contractor).permit(:photo, :surname, :name, :patronymic, :address, :phone_number, :rating, :info, :page, {:service_ids => []})
    end
end
