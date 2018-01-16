require 'test_helper'

class StorefrontControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get storefront_home_url
    assert_response :success
  end

  test "should get shop" do
    get storefront_shop_url
    assert_response :success
  end

  test "should get blog" do
    get storefront_blog_url
    assert_response :success
  end

  test "should get contact" do
    get storefront_contact_url
    assert_response :success
  end

end
