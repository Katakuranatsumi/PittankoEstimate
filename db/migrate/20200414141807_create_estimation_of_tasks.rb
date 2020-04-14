class CreateEstimationOfTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :estimation_of_tasks do |t|
      t.string :title, null:false
      t.string :detail
      t.integer :task_type, default: 0, null: false

      t.timestamps
    end
  end
end
