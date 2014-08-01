require 'spec_helper'

describe "StaticPages" do

  let(:title_prefix) { 'Ruby on Rails Tutorial Sample App' }

  describe "Home page" do

    it 'should have the content "Sample App"' do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it 'should have the right title' do
      visit '/static_pages/home'
      expect(page).to have_title "#{title_prefix} | Home"
    end

  end

  describe "help page" do

    it 'should have the content "Help"' do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it 'should have the right title' do
      visit '/static_pages/help'
      expect(page).to have_title "#{title_prefix} | Help"
    end

  end

  describe "about page" do

    it 'should have the content "About"' do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it 'should have the right title' do
      visit '/static_pages/about'
      expect(page).to have_title "#{title_prefix} | About"
    end

  end

end