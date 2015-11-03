require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Тестовая страница нового сайта TSLRussia.org" }

  describe "Home page" do

    it "should have the content 'Главная страница сайта'" do
      visit '/static_pages/home'
      expect(page).to have_content('Главная страница сайта')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Тестовая страница нового сайта TSLRussia.org")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Домашняя')
    end
  end

  describe "Help page" do

    it "should have the content 'Страница в разработке'" do
      visit '/static_pages/help'
      expect(page).to have_content('Страница в разработке')
    end

    it "should have the title 'Помощь'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Помощь")
    end
  end

  describe "About page" do

    it "should have the content 'Пока работает только старый сайт'" do
      visit '/static_pages/about'
      expect(page).to have_content('Пока работает только старый сайт')
    end

    it "should have the title 'О нас'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | О нас")
    end
  end

  describe "Contact page" do

    it "should have the content 'Все контакты пока на сайте'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Все контакты пока на сайте')
    end

    it "should have the title 'Контакты'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Контакты")
    end
  end
end