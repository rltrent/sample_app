require 'spec_helper'

describe "StaticPages" do

	subject { page }
	describe "Home page" do

		before { visit root_path }
		it { page.should have_selector('title', text: full_title('')) }
		it { page.should have_selector('h1', text: 'Sample App') }
	end

	describe "Help page" do
		before { visit help_path }
		it { page.should have_selector('title', text: full_title('Help')) }
		it { page.should have_content('Help') }
	end

	describe "About page" do
		before { visit about_path }
		it { page.should have_selector('title', text: full_title('About')) }
		it { page.should have_content('About') }
	end

	describe "Contact page" do
		before { visit contact_path }
		it { should have_selector('title', text: full_title('Contact')) }
		it { page.should have_content('Contact') }
	end	
end
