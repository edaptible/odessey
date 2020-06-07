class Managers::StudentChallengesController < ApplicationController

  def index
    student_challenges = StudentChallenge.all

    respond_to do |format|
      format.html { render :index,  locals: {student_challenges: student_challenges} }
    end
  end

  def show
    student_challenge = set_student_challenge

    respond_to do |format|
      format.html { render :show,  locals: {student_challenge: student_challenge} }
    end
  end

  def new
    student_challenge = StudentChallenge.new

    respond_to do |format|
      format.html { render :edit,  locals: {student_challenge: student_challenge} }
    end
  end

  def edit
    student_challenge = set_student_challenge

    respond_to do |format|
      format.html { render :edit,  locals: {student_challenge: student_challenge} }
      # format.json { render :edit, status: :created, location: student_challenge }
      # format.json { render json: student_challenge.errors, status: :unprocessable_entity }
    end
  end

  def create
    student_challenge = StudentChallenge.new(student_challenge_params)

    respond_to do |format|
      if student_challenge.save
        format.html { redirect_to student_challenge, notice: 'Challenge was successfully created.' }
        format.json { render :show, status: :created, location: student_challenge }
      else
        format.html { render :new }
        format.json { render json: student_challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    student_challenge = set_student_challenge

    respond_to do |format|
      if student_challenge.update(student_challenge_params)
        format.html { redirect_to student_challenge, notice: 'Challenge was successfully updated.' }
        format.json { render :show, status: :ok, location: student_challenge }
      else
        format.html { render :edit }
        format.json { render json: student_challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    student_challenge = StudentChallenge.find(params[:id])
    student_challenge.destroy

    respond_to do |format|
      format.html { redirect_to manager_student_challenges_url, notice: 'Challenge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_challenge
      StudentChallenge.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_challenge_params
      # params.fetch(:student_challenge,
      #               { :student_level_name,
      #                 :student_challenge_level_points,
      #                 :student_coaching_ideas,
      #                 :student_challenge_description })
      params.require(:student_challenge)
            .permit(:student_level_name,
                    :student_challenge_level_points,
                    :student_coaching_ideas,
                    :student_challenge_description)
    end
end
