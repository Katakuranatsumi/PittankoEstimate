module ApplicationHelper
  def translated_task_type(task_type)
    t("enums.estimation_of_task.task_type.#{task_type}")
  end

  def candidated_task_types
    EstimationOfTask.task_types.keys.map { |k| [translated_task_type(k), k] }
  end
end
