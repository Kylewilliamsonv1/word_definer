require 'simplecov'
SimpleCov.start
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a home path to words page', {:type => :feature}) do
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

describe('locate new word', {:type => :feature}) do
  it('take user to word list page.') do
    visit('/')
    click_on('nugget')
    expect(page).to have_content('nugget')
  end
end

describe('edit word', {:type => :feature}) do
  it('take user to edit page') do
    visit('/words')
    click_on('nugget')
    click_on('Edit word')
    fill_in('name', :with => 'happy')
    click_on('Update')
    expect(page).to have_content('happy')
  end
end

describe('create new definition', {:type => :feature}) do
  it('creates a new definition and returns to word page') do
    visit('/words')
    click_on('nugget')
    click_on('Enter a new definition')
    fill_in('description', :with => 'buildable kids couch')
    expect(page).to have_content('buildable kids couch')
  end
end