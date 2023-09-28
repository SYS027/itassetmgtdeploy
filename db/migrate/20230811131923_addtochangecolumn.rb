class AddReferencesToEmployees < ActiveRecord::Migration[7.0]
  def change
    # First, remove the existing columns
    remove_column :employees, :location_id
    remove_column :employees, :department_id

    # Then, add the references columns
    add_reference :employees, :location, foreign_key: true, type: :uuid
    add_reference :employees, :department, foreign_key: true, type: :uuid
  end
end
