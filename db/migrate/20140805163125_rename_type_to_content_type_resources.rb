class RenameTypeToContentTypeResources < ActiveRecord::Migration
  def change
  	rename_column :resources, :type, :contentType
  end
end
