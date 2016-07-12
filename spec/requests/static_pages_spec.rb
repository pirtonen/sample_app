require 'rails_helper'
require 'spec_helper'

RSpec.describe "StaticPages", :type => :feature do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
  
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_selector('h1', :text => 'Sample App')
    end
	
	it "should have the base title" do
	  visit '/static_pages/home'
<<<<<<< HEAD
	  expect(page).to have_title("#{base_title} | Home")
=======
	  expect(page).to have_title("Ruby on Rails Tutorial Sample App")
>>>>>>> static-pages
	end

	it "should not have a custom page title" do
	  visit '/static_pages/home'
	  expect(page).to have_no_title(' | Home')
	end
	
  end

  describe "Help page" do
  
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_selector('h1', :text => 'Help')
    end
	
	it "should have the right title" do
	  visit '/static_pages/help'
	  expect(page).to have_title("#{base_title} | Help" )
	end
	
  end

  describe "About page" do
  
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_selector('h1', :text => 'About Us')
    end
	
	it "should have the right title" do
	  visit '/static_pages/about'
	  expect(page).to have_title("#{base_title} | About Us" )
	end
	
  end

  describe "Contact page" do
  
    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_selector('h1', :text => 'Contact')
    end
	
	it "should have the right title" do
	  visit '/static_pages/contact'
	  expect(page).to have_title("#{base_title} | Contact" )
	end
	
  end
    
end
