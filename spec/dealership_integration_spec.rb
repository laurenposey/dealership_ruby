require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe "root route", {:type => :feature} do

  it 'clicks on the vehicle list link and displays the content for that route' do
    visit('/')
    click_link('See Vehicle List')
    expect(page).to have_content('Vehicles')
  end

  it 'clicks on the add new vehicle link and displays the form for adding a new vehicle' do
    visit ('/')
    click_link('Add New Vehicle')
    expect(page).to have_content()
  end

end
