require 'test_helper'

class TypePublicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_publication = type_publications(:one)
  end

  test "should get index" do
    get type_publications_url
    assert_response :success
  end

  test "should get new" do
    get new_type_publication_url
    assert_response :success
  end

  test "should create type_publication" do
    assert_difference('TypePublication.count') do
      post type_publications_url, params: { type_publication: { nombre: @type_publication.nombre } }
    end

    assert_redirected_to type_publication_url(TypePublication.last)
  end

  test "should show type_publication" do
    get type_publication_url(@type_publication)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_publication_url(@type_publication)
    assert_response :success
  end

  test "should update type_publication" do
    patch type_publication_url(@type_publication), params: { type_publication: { nombre: @type_publication.nombre } }
    assert_redirected_to type_publication_url(@type_publication)
  end

  test "should destroy type_publication" do
    assert_difference('TypePublication.count', -1) do
      delete type_publication_url(@type_publication)
    end

    assert_redirected_to type_publications_url
  end
end
