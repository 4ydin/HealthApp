require 'spec_helper'

describe "StartPages" do
 

 describe "Pages" do

    it "should have the h1 'Contact'" do
      visit '/contact'
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the h1 'Help'" do
      visit '/help'
      page.should have_selector('h1', text: 'Help')
    end

    it "should have the h1 'About'" do
      visit '/about'
      page.should have_selector('h1', text: 'About')
    end

      
 end

end
