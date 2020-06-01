require 'rails_helper'

RSpec.describe "admin/challenges/edit", type: :view do
  before(:each) do
    @manager_student_challenge = assign(:manager_student_challenge, Manager::Challenge.create!())
  end

  it "renders the edit manager_student_challenge form" do
    render

    assert_select "form[action=?][method=?]", manager_student_challenge_path(@manager_student_challenge), "post" do
    end
  end
end
