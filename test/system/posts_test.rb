require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Donar", with: @post.Donar
    fill_in "Beneficiaries", with: @post.beneficiaries
    fill_in "Description", with: @post.description
    fill_in "Funded", with: @post.funded
    fill_in "Latitude", with: @post.latitude
    fill_in "Longitude", with: @post.longitude
    fill_in "Population", with: @post.population
    fill_in "Region", with: @post.region
    fill_in "Status", with: @post.status
    fill_in "Supported Sector", with: @post.supported_sector
    fill_in "Title", with: @post.title
    fill_in "Town", with: @post.town
    fill_in "When", with: @post.when
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Donar", with: @post.Donar
    fill_in "Beneficiaries", with: @post.beneficiaries
    fill_in "Description", with: @post.description
    fill_in "Funded", with: @post.funded
    fill_in "Latitude", with: @post.latitude
    fill_in "Longitude", with: @post.longitude
    fill_in "Population", with: @post.population
    fill_in "Region", with: @post.region
    fill_in "Status", with: @post.status
    fill_in "Supported Sector", with: @post.supported_sector
    fill_in "Title", with: @post.title
    fill_in "Town", with: @post.town
    fill_in "When", with: @post.when
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
