require 'rails_helper'
require 'spec_helper'

RSpec.describe "UserPages", type: :feature do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }
  
  describe "Signup page" do
    before { visit signup_path }
	
    it { expect have_selector('h1', :text => 'Sign up') }
	it { expect have_title(full_title('Sign up')) }

  end
end
