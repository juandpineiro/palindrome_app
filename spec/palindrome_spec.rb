require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'site pages', type: :feature do
  context 'index' do
    # it 'visits the homepage' do
    #   pending
    # end

    it 'has a header' do
      visit('/')
      expect(page).to have_css('h1', text: 'Sample Sinatra App')
    end

    it 'has a navbar' do
      visit('/')
      expect(page).to have_css('nav')
    end
  end

  context 'about' do
    # it 'visits the about page' do
    # end

    it 'has a header' do
      visit('/about')
      expect(page).to have_css('h1', text: 'About')
    end
  end

  context 'palindrome' do
    # it 'visits the palindrome page' do
    # end

    it 'has a header' do
      visit('/palindrome')
      expect(page).to have_css('h1', text: 'Palindrome Detector')
    end
  end
end
