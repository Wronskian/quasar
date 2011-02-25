require 'spec_helper'

describe "Page" do

  pages = [ { :name => "home",    :path => "/"        },
            { :name => "about",   :path => "/about"   },
            { :name => "contact", :path => "/contact" },
            { :name => "help",    :path => "/help"    },
            { :name => "terms",   :path => "/terms"   },
            { :name => "privacy", :path => "/privacy" } ]
  
  pages.each do |page|
    it "'#{page[:name]}' should be at '#{page[:path]}'" do
      get page[:path]
      response.should have_selector("title", :content => "#{page[:name].capitalize}")
    end
  end
end
