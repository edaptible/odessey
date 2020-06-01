class Manager::StudentChallengesController < ApplicationController
  before_action :set_manager_student_challenge, only: [:show, :edit, :update, :destroy]

  # GET /admin/challenges
  # GET /admin/challenges.json
  def index
    @manager_student_challenges = Manager::Challenge.all
  end

  # GET /admin/challenges/1
  # GET /admin/challenges/1.json
  def show
  end

  # GET /admin/challenges/new
  def new
    @manager_student_challenge = Manager::Challenge.new
  end

  # GET /admin/challenges/1/edit
  def edit
  end

  # POST /admin/challenges
  # POST /admin/challenges.json
  def create
    @manager_student_challenge = Manager::Challenge.new(manager_student_challenge_params)

    respond_to do |format|
      if @manager_student_challenge.save
        format.html { redirect_to @manager_student_challenge, notice: 'Challenge was successfully created.' }
        format.json { render :show, status: :created, location: @manager_student_challenge }
      else
        format.html { render :new }
        format.json { render json: @manager_student_challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/challenges/1
  # PATCH/PUT /admin/challenges/1.json
  def update
    respond_to do |format|
      if @manager_student_challenge.update(manager_student_challenge_params)
        format.html { redirect_to @manager_student_challenge, notice: 'Challenge was successfully updated.' }
        format.json { render :show, status: :ok, location: @manager_student_challenge }
      else
        format.html { render :edit }
        format.json { render json: @manager_student_challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/challenges/1
  # DELETE /admin/challenges/1.json
  def destroy
    @manager_student_challenge.destroy
    respond_to do |format|
      format.html { redirect_to manager_student_challenges_url, notice: 'Challenge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manager_student_challenge
      @manager_student_challenge = Manager::Challenge.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def manager_student_challenge_params
      params.fetch(:manager_student_challenge, {})
    end
end
