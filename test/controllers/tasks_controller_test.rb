require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post tasks_url, params: { task: { brand_id: @task.brand_id, client_id: @task.client_id, contractor_id: @task.contractor_id, date_end: @task.date_end, date_start: @task.date_start, info: @task.info, model_id: @task.model_id, price: @task.price, status: @task.status, transmission: @task.transmission, vin: @task.vin } }
    end

    assert_redirected_to task_url(Task.last)
  end

  test "should show task" do
    get task_url(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_url(@task), params: { task: { brand_id: @task.brand_id, client_id: @task.client_id, contractor_id: @task.contractor_id, date_end: @task.date_end, date_start: @task.date_start, info: @task.info, model_id: @task.model_id, price: @task.price, status: @task.status, transmission: @task.transmission, vin: @task.vin } }
    assert_redirected_to task_url(@task)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete task_url(@task)
    end

    assert_redirected_to tasks_url
  end
end
