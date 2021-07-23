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