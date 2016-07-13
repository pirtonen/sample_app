require 'rails_helper'
require 'spec_helper'

RSpec.describe "StaticPages", :type => :feature do

#  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject {page}

  shared_examples_for "all static pages" do
    it { expect have_selector('h1', text: heading) }
	it { expect have_title(full_title(page_title)) }    
  end
  
  describe "Home page" do
    before {visit root_path}
	let(:heading)     { 'Sample App' }
    let(:page_title)  { '' }
	
    it_should_behave_like "all static pages"
	it { expect have_no_title(' | Home') }
	
  end
  
  describe "Help page" do
    before {visit help_path}  
	let(:heading)     { 'Help' }
    let(:page_title)  { 'Help' }
	
    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before {visit about_path}  
	let(:heading)     { 'About Us' }
    let(:page_title)  { 'About Us' }
	
    it_should_behave_like "all static pages"	  
  end

  describe "Contact page" do
    before {visit contact_path} 
	let(:heading)     { 'Contact' }
    let(:page_title)  { 'Contact' }
	
    it_should_behave_like "all static pages"	
  end

  it "should have the right links on the layout" do
    visit root_path
	click_link "About"
	expect(page).to have_title(full_title('About Us'))
	click_link "Help"
	expect(page).to have_title(full_title('Help'))
    click_link "Contact"
	expect(page).to have_title(full_title('Contact'))
	click_link "Home"
	click_link "Sign up now!"
	expect(page).to have_title(full_title('Sign up'))	
#	click_link "sampple app"
#	expect(page).to have_title(full_title(''))	
  end
end
