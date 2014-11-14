class DeleteNoNameOrganizations < ActiveRecord::Migration
  def change
    Organization.where(name: nil).delete_all
  end
end
