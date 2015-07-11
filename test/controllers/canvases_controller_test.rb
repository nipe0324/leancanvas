require 'test_helper'

class CanvasesControllerTest < ActionController::TestCase
  setup do
    @canvas = canvases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:canvases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create canvas" do
    assert_difference('Canvas.count') do
      post :create, canvas: { channels: @canvas.channels, cost_structure: @canvas.cost_structure, customer_segments: @canvas.customer_segments, key_metrics: @canvas.key_metrics, name: @canvas.name, problem: @canvas.problem, revenue_streams: @canvas.revenue_streams, solution: @canvas.solution, unfair_advantage: @canvas.unfair_advantage, user_id: @canvas.user_id, uvp: @canvas.uvp }
    end

    assert_redirected_to canvas_path(assigns(:canvas))
  end

  test "should show canvas" do
    get :show, id: @canvas
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @canvas
    assert_response :success
  end

  test "should update canvas" do
    patch :update, id: @canvas, canvas: { channels: @canvas.channels, cost_structure: @canvas.cost_structure, customer_segments: @canvas.customer_segments, key_metrics: @canvas.key_metrics, name: @canvas.name, problem: @canvas.problem, revenue_streams: @canvas.revenue_streams, solution: @canvas.solution, unfair_advantage: @canvas.unfair_advantage, user_id: @canvas.user_id, uvp: @canvas.uvp }
    assert_redirected_to canvas_path(assigns(:canvas))
  end

  test "should destroy canvas" do
    assert_difference('Canvas.count', -1) do
      delete :destroy, id: @canvas
    end

    assert_redirected_to canvases_path
  end
end
