class EraseOrganizationsWithSpaceNames < ActiveRecord::Migration
  def change
    Organization.where(name: "").delete_all
    Organization.where(name: " ").delete_all
  end
end
