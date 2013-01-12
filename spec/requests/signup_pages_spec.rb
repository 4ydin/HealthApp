require "spec_helper"

describe "user sign up" do

   it "should have the h1 'Sign Up'" do
      visit '/signup'
      page.should have_selector('h1', text: 'Sign up')
    end


  it "allows new users to register with username and password" do
    visit "/signup"

    fill_in "Username",              :with => "userName"
    fill_in "Email",                 :with => "userName@example.com"
    fill_in "Password",              :with => "onetwothree"
    fill_in "Confirmation",      :with => "onetwothree"

    click_button "Create my account"
  end
end