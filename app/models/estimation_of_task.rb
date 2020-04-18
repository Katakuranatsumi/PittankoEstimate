class EstimationOfTask < ApplicationRecord
  enum task_type: { development: 0, requirement_definition: 1, test: 2 }
end
