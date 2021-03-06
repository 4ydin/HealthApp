class DailiesController < ApplicationController
  # GET /dailies
  # GET /dailies.json
  def index
    @profile = Profile.find(params[:profile_id])
    @dailies = @profile.dailies.order(:calculated_at)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dailies }
    end
  end

  # GET /dailies/1
  # GET /dailies/1.json
  def show
    @profile = Profile.find(params[:profile_id])
    @daily = @profile.dailies.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daily }
    end
  end

  # GET /dailies/new
  # GET /dailies/new.json
  def new
    @profile = Profile.find(params[:profile_id])
    @daily = @profile.dailies.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daily }
    end
  end

  # GET /dailies/1/edit
  def edit
    @daily = Daily.find(params[:id])
  end

  # POST /dailies
  # POST /dailies.json
  def create
    @profile = Profile.find(params[:profile_id])
    @daily = @profile.dailies.new(params[:daily])


    respond_to do |format|
      if @daily.save
        format.html { redirect_to profile_dailies_path(@profile), notice: 'Daily was successfully created.' }
        format.json { render json: profile_dailies_path(@profile), status: :created, location: @daily }
      else
        format.html { render action: "new" , notice: 'Daily was NOT successfully created.' }
        #format.json { render json: @daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dailies/1
  # PUT /dailies/1.json
  def update
    @daily = Daily.find(params[:id])

    respond_to do |format|
      if @daily.update_attributes(params[:daily])
        format.html { redirect_to @daily, notice: 'Daily was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dailies/1
  # DELETE /dailies/1.json
  def destroy
    @daily = Daily.find(params[:id])
    @daily.destroy

    respond_to do |format|
      format.html { redirect_to dailies_url }
      format.json { head :no_content }
    end
  end
end
