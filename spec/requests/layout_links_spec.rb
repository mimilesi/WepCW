require 'spec_helper'

require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end

  it "should have an Events page at '/events'" do
    get '/events'
    response.should have_selector('title', :content => "Events")
  end
  
  it "should have a Find Us page at '/findus'" do
    get '/findus'
    response.should have_selector('title', :content => "Find Us")
  end
  
  it "should have a Sign up page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end
  
  it "should have the right links on the layout" do
    visit root_path
    response.should have_selector('title', :content => "Home")
    click_link "About"
    response.should have_selector('title', :content => "About")
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")
    click_link "Home"
    response.should have_selector('title', :content => "Home")
    click_link "Events"
    response.should have_selector('title', :content => "Events")
    click_link "Find Us"
    response.should have_selector('title', :content => "Find Us")
    response.should have_selector('a[href="/"]>img')
  
  end
  
end