require 'spec_helper'

describe "Static pages" do

  let(:title_prefix) { "Ruby on Rails Tutorial Sample App" }
  
  subject { page }
  
  describe "Home page" do
    before { visit root_path }
    let(:home_suffix) { " | Home" }

    it { should have_content( 'home page' ) }
#      expect(page).to have_content('home page')
#    end

#    it "should have the title '" + @title_prefix + @home_suffix + "'" do
    it { should have_title(full_title('')) }
#      expect(page).to have_title("#{title_prefix}")
#    end

    it "should not have a custom page title" do
      expect(page).not_to have_title('| Home')
    end
  end
  
  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the title 'Ruby on Rails Tutorial Sample App | Help'" do
      visit help_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "should have the title 'Ruby on Rails Tutorial Sample App | About Us'" do
      visit about_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
  
  describe "Contact page" do
  
    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Ruby on Rails Tutorial Sample App | Contact'" do
      visit contact_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end

end