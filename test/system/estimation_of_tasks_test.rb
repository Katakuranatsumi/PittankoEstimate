require "application_system_test_case"

class EstimationOfTasksTest < ApplicationSystemTestCase
  setup do
    @estimation_of_task = estimation_of_tasks(:one)
  end

  test "visiting the index" do
    visit estimation_of_tasks_url
    assert_selector "h1", text: "Estimation Of Tasks"
  end

  test "creating a Estimation of task" do
    visit estimation_of_tasks_url
    click_on "New Estimation Of Task"

    fill_in "Detail", with: @estimation_of_task.detail
    fill_in "Task type", with: @estimation_of_task.task_type
    fill_in "Title", with: @estimation_of_task.title
    click_on "Create Estimation of task"

    assert_text "Estimation of task was successfully created"
    click_on "Back"
  end

  test "updating a Estimation of task" do
    visit estimation_of_tasks_url
    click_on "Edit", match: :first

    fill_in "Detail", with: @estimation_of_task.detail
    fill_in "Task type", with: @estimation_of_task.task_type
    fill_in "Title", with: @estimation_of_task.title
    click_on "Update Estimation of task"

    assert_text "Estimation of task was successfully updated"
    click_on "Back"
  end

  test "destroying a Estimation of task" do
    visit estimation_of_tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estimation of task was successfully destroyed"
  end
end
