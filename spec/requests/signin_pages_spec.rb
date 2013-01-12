require "spec_helper"

describe "user sign in" do

   it "should have the h1 'Sign Up'" do
      visit '/signin'
      page.should have_selector('h1', text: 'Sign in')
    end


  it "allows registered user sign in with username and password" do

    user = User.create(:username => "userName", :email    => "userName@example.com",
                       :password => "onetwothree")

    visit "/signin"

    fill_in "Username",              :with => "userName"
    fill_in "Password",              :with => "onetwothree"

    click_button "Sign in"
  end
end