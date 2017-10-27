require 'test_helper'

class GlobalsettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @globalsetting = globalsettings(:one)
  end

  test "should get index" do
    get globalsettings_url
    assert_response :success
  end

  test "should get new" do
    get new_globalsetting_url
    assert_response :success
  end

  test "should create globalsetting" do
    assert_difference('Globalsetting.count') do
      post globalsettings_url, params: { globalsetting: { fredag: @globalsetting.fredag, fredaghour: @globalsetting.fredaghour, fredagminute: @globalsetting.fredagminute, lørdag: @globalsetting.lørdag, lørdaghour: @globalsetting.lørdaghour, lørdagminute: @globalsetting.lørdagminute, mandag: @globalsetting.mandag, mandaghour: @globalsetting.mandaghour, mandagminute: @globalsetting.mandagminute, onsdag: @globalsetting.onsdag, onsdaghour: @globalsetting.onsdaghour, onsdagminute: @globalsetting.onsdagminute, søndag: @globalsetting.søndag, søndaghour: @globalsetting.søndaghour, søndagminute: @globalsetting.søndagminute, tirsdag: @globalsetting.tirsdag, tirsdaghour: @globalsetting.tirsdaghour, tirsdagminute: @globalsetting.tirsdagminute, torsdag: @globalsetting.torsdag, torsdaghour: @globalsetting.torsdaghour, torsdagminute: @globalsetting.torsdagminute } }
    end

    assert_redirected_to globalsetting_url(Globalsetting.last)
  end

  test "should show globalsetting" do
    get globalsetting_url(@globalsetting)
    assert_response :success
  end

  test "should get edit" do
    get edit_globalsetting_url(@globalsetting)
    assert_response :success
  end

  test "should update globalsetting" do
    patch globalsetting_url(@globalsetting), params: { globalsetting: { fredag: @globalsetting.fredag, fredaghour: @globalsetting.fredaghour, fredagminute: @globalsetting.fredagminute, lørdag: @globalsetting.lørdag, lørdaghour: @globalsetting.lørdaghour, lørdagminute: @globalsetting.lørdagminute, mandag: @globalsetting.mandag, mandaghour: @globalsetting.mandaghour, mandagminute: @globalsetting.mandagminute, onsdag: @globalsetting.onsdag, onsdaghour: @globalsetting.onsdaghour, onsdagminute: @globalsetting.onsdagminute, søndag: @globalsetting.søndag, søndaghour: @globalsetting.søndaghour, søndagminute: @globalsetting.søndagminute, tirsdag: @globalsetting.tirsdag, tirsdaghour: @globalsetting.tirsdaghour, tirsdagminute: @globalsetting.tirsdagminute, torsdag: @globalsetting.torsdag, torsdaghour: @globalsetting.torsdaghour, torsdagminute: @globalsetting.torsdagminute } }
    assert_redirected_to globalsetting_url(@globalsetting)
  end

  test "should destroy globalsetting" do
    assert_difference('Globalsetting.count', -1) do
      delete globalsetting_url(@globalsetting)
    end

    assert_redirected_to globalsettings_url
  end
end
