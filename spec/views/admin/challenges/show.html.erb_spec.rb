require 'rails_helper'

RSpec.describe "admin/challenges/show", type: :view do
  before(:each) do
    @manager_student_challenge = assign(:manager_student_challenge, Manager::Challenge.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
