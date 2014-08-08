class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :type
      t.string :category
      t.string :course
      t.references :user

      t.timestamps
    end
  end
end
