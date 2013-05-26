require 'test_helper'

class Api::V1::EventsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should get index' do
    get :index, format: :json
    assert_response :success
  end

  test 'should get show' do
    get :show, id: Event.first.id, format: :json
    assert_response :success
  end
end
