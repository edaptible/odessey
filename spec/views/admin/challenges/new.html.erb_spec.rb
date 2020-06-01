require 'rails_helper'

RSpec.describe "admin/challenges/new", type: :view do
  before(:each) do
    assign(:manager_student_challenge, Manager::Challenge.new())
  end

  it "renders new manager_student_challenge form" do
    render

    assert_select "form[action=?][method=?]", manager_student_challenges_path, "post" do
    end
  end
end
