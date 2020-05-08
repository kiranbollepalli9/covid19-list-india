require 'test_helper'

class CovidCasesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get covid_cases_index_url
    assert_response :success
  end

end
