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

    it 'has a title' do
      visit('/')
      @base_title = 'Learn Enough Ruby Sample App'
      expect(page).to have_title "#{@base_title} | Home", exact: true
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

    it 'has a title' do
      visit('/about')
      @base_title = 'Learn Enough Ruby Sample App'
      expect(page).to have_title "#{@base_title} | About", exact: true
    end
  end

  context 'palindrome' do
    # it 'visits the palindrome page' do
    # end

    it 'has a header' do
      visit('/palindrome')
      expect(page).to have_css('h1', text: 'Palindrome Detector')
    end

    it 'has a title' do
      visit('/palindrome')
      @base_title = 'Learn Enough Ruby Sample App'
      expect(page).to have_title "#{@base_title} | Palindrome Detector", exact: true
    end
  end
end
