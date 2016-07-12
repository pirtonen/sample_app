require 'rails_helper'
require 'spec_helper'

RSpec.describe "StaticPages", :type => :feature do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject {page}
  
  describe "Home page" do
    before {visit root_path}
	
    it { expect have_selector('h1', :text => 'Sample App') }
	it { expect have_title(full_title('')) }
	it { expect have_no_title(' | Home') }
  end
  
  describe "Help page" do
    before {visit help_path}  
	
    it { expect have_selector('h1', :text => 'Help') }
	it { expect have_title(full_title('Help')) }
  end

  describe "About page" do
    before {visit about_path}  
	  
    it {expect have_selector('h1', :text => 'About Us') }	
	it { expect have_title(full_title('About Us')) }	
  end

  describe "Contact page" do
    before {visit contact_path} 
	  
    it { expect have_selector('h1', :text => 'Contact') }
	it { expect have_title(full_title('Contact')) }
	
  end

end
