require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Приветствую!' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Домашняя') }
  end

  describe "Help page" do
    before { visit help_path }
    let(:heading)    { 'Помощь' }
    let(:page_title) { 'Помощь' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }
    let(:heading)    { 'О нас' }
    let(:page_title) { 'О нас' }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:heading)    { 'Контакты' }
    let(:page_title) { 'Контакты' }

    it_should_behave_like "all static pages"
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('О нас'))
    click_link "Help"
    expect(page).to have_title(full_title('Помощь')) # заполнить
    click_link "Contact"
    expect(page).to have_title(full_title('Контакты')) # заполнить
    click_link "Home"
    click_link "Присоединяйтесь!"
    expect(page).to have_title(full_title('Регистрация')) # заполнить
    click_link "tslrussia.org"
    expect(page).to have_title(full_title('')) # заполнить
  end
end