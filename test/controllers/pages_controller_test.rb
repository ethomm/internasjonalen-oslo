require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root path" do
    get root_url
    assert_response :success
    assert_select 'title', 'Internasjonalen Oslo | In dog we trust!'
  end

  test "should get om internasjonalen " do
    get om_internasjonalen_url
    assert_response :success
    assert_select 'title', 'Internasjonalen Oslo | Om Internasjonalen'
  end

  test "Should get kontakt internajonalen pages" do
    get kontakt_internasjonalen_path
    assert_response :success
    assert_select 'title', 'Internasjonalen Oslo | Slå på tråden eller send oss en mail'
  end

end
