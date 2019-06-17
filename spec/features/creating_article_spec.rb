require 'rails_helper'
require 'spec_helper'


RSpec.feature 'Creating Article'  do
	scenario "User creates a new Article" do
		visit "/"
		click_link "New Article"
		fill_in "Title",with:"Creating a blog"
		fill_in "Body",with:"Lorem Ipsum"
		click_button "Create Article"
		expect(page).to have_content("Article has Been Created")
		expect(page.current_path).to eq(articles_path)
	end
end