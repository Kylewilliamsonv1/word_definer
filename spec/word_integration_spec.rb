require 'simplecov'
SimpleCov.start
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a path to words page', {:type => :feature}) do
  it('goes to home page') do
    visit('/')
    expect(page).to have_content('Discover words')
  end
end

describe('create a new word', {:type => :feature}) do
  it('creates a new word and then goes to the new board page') do
    visit('/')
    click_on('Add a New Word')
    fill_in('name', :with => 'nugget')
    click_on('Create Word')
    expect(page).to have_content('nugget')
  end
end



