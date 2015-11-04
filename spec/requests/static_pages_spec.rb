require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Главная страница сайта') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Домашняя') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Страница в разработке') }
    it { should have_title(full_title('Помощь')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('Пока работает только старый сайт') }
    it { should have_title(full_title('О нас')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Все контакты пока на сайте') }
    it { should have_title(full_title('Контакты')) }
  end
end