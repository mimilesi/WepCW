require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
      #
      # Define @base_title here.
      #
    end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
          get 'home'
          response.should have_selector("title",
                            :content => "Discover Box Hills | Home")
        end
  end


  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title" do
          get 'contact'
          response.should have_selector("title",
                            :content => "Discover Box Hills | Contact")
        end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right title" do
          get 'about'
          response.should have_selector("title",
                            :content => "Discover Box Hills | About")
        end
  end

  describe "GET 'events'" do
    it "should be successful" do
      get 'events'
      response.should be_success
    end
    
    it "should have the right title" do
          get 'events'
          response.should have_selector("title",
                            :content => "Discover Box Hills | Events")
        end
  end

  describe "GET 'findus'" do
    it "should be successful" do
      get 'findus'
      response.should be_success
    end
    
    it "should have the right title" do
          get 'findus'
          response.should have_selector("title",
                            :content => "Discover Box Hills | Find Us")
        end
  end

end
