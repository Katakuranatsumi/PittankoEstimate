require 'test_helper'

class EstimationOfTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estimation_of_task = estimation_of_tasks(:one)
  end

  test "should get index" do
    get estimation_of_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_estimation_of_task_url
    assert_response :success
  end

  test "should create estimation_of_task" do
    assert_difference('EstimationOfTask.count') do
      post estimation_of_tasks_url, params: { estimation_of_task: { detail: @estimation_of_task.detail, task_type: @estimation_of_task.task_type, title: @estimation_of_task.title } }
    end

    assert_redirected_to estimation_of_task_url(EstimationOfTask.last)
  end

  test "should show estimation_of_task" do
    get estimation_of_task_url(@estimation_of_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_estimation_of_task_url(@estimation_of_task)
    assert_response :success
  end

  test "should update estimation_of_task" do
    patch estimation_of_task_url(@estimation_of_task), params: { estimation_of_task: { detail: @estimation_of_task.detail, task_type: @estimation_of_task.task_type, title: @estimation_of_task.title } }
    assert_redirected_to estimation_of_task_url(@estimation_of_task)
  end

  test "should destroy estimation_of_task" do
    assert_difference('EstimationOfTask.count', -1) do
      delete estimation_of_task_url(@estimation_of_task)
    end

    assert_redirected_to estimation_of_tasks_url
  end
end
