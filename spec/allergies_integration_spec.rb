require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the allergen output path', {:type => :feature}) do
  it('processes the user entry and returns allergens') do
    visit('/')
    fill_in('allergyScore', :with => 64)
    click_button('Submit')
    expect(page).to have_content('pollen')
  end
end
