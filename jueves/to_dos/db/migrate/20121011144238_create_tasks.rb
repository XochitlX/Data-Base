class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      # Completa con las columnas que necesites
      t.string :task
      #t.string :status
      t.boolean :status
      t.string :assigned
      #t.timestamps
    end
  end
end
