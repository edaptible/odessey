require 'rails_helper'

RSpec.describe "admin/challenges/index", type: :view do
  before(:each) do
    assign(:manager_student_challenges, [
      Manager::Challenge.create!(),
      Manager::Challenge.create!()
    ])
  end

  it "renders a list of admin/challenges" do
    render
  end
end
