class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.search(params[:search])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
    
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
    @profile = Profile.new(params[:profile])
    @user.profile = @profile

    respond_to do |format|
      if @user.save
        flash[:success] = "Welcome to the CalBook!"
        format.html { redirect_to signin_path, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
        format.json { render json: @profile, status: :created, location: @profile }
      else
        format.html { redirect_to new_user_path, notice: 'User was not successfully created.'}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id], :include => :profile)
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
