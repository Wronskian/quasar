require 'spec_helper'

describe PagesController do
  
  render_views
  
  describe "GET page" do
  
    pages = [ "home", "about", "contact", "help", "terms", "privacy" ]
    
    pages.each do |page|
    
      describe "#{page}" do
      
        it "should be successful" do
          get page
          response.should be_success
        end
        
        it "should have the correct title" do
          get page
          response.should have_selector("title", :content => "#{page.capitalize}")
        end
      end
    end
  end
end