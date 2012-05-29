class ContractantsController < ApplicationController

  def login
  end


  # GET /contractants
  # GET /contractants.json
  def index
    @contractants = Contractant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contractants }
    end
  end

  # GET /contractants/1
  # GET /contractants/1.json
  def show
    @contractant = Contractant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contractant }
    end
  end

  def new
    @contractant = Contractant.new
  end
  
  def create
    @contractant = Contractant.new(params[:contractant])
    if @contractant.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  # GET /contractants/1/edit
  def edit
    @contractant = Contractant.find(params[:id])
  end

  # POST /contractants
  # POST /contractants.json
  # def create
  #   @contractant = Contractant.new(params[:contractant])

  #   respond_to do |format|
  #     if @contractant.save
  #       format.html { redirect_to @contractant, notice: 'Contractant was successfully created.' }
  #       format.json { render json: @contractant, status: :created, location: @contractant }
  #     else
  #       format.html { render action: "new" }
  #       format.json { render json: @contractant.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PUT /contractants/1
  # PUT /contractants/1.json
  def update
    @contractant = Contractant.find(params[:id])

    respond_to do |format|
      if @contractant.update_attributes(params[:contractant])
        format.html { redirect_to @contractant, notice: 'Contractant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contractant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contractants/1
  # DELETE /contractants/1.json
  def destroy
    @contractant = Contractant.find(params[:id])
    @contractant.destroy

    respond_to do |format|
      format.html { redirect_to contractants_url }
      format.json { head :no_content }
    end
  end
end
