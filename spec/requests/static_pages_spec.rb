require 'spec_helper'

describe "Static pages" do

  let(:title_prefix) { "Ruby on Rails Tutorial Sample App" }
  
  describe "Home page" do
  
    let(:home_suffix) { " | Home" }

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

#    it "should have the title '" + @title_prefix + @home_suffix + "'" do
    it "should have the title " do	
      visit '/static_pages/home'
      expect(page).to have_title("#{title_prefix}")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end
  
  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Ruby on Rails Tutorial Sample App | Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'Ruby on Rails Tutorial Sample App | About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
  
  describe "Contact page" do
  
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Ruby on Rails Tutorial Sample App | Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end

end