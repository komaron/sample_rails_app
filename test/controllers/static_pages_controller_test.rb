require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @app_title = 'Ruby on Rails Sample App'
  end

  test "should get root" do
    get root_url
    assert_response :success
    assert_select 'title', "#{@app_title}"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select 'title', "#{@app_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select 'title', "Help | #{@app_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select 'title', "About | #{@app_title}"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select 'title', "Contact | #{@app_title}"
  end
end
