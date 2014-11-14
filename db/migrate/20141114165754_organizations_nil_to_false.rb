class OrganizationsNilToFalse < ActiveRecord::Migration
  def change
    Organization.where(active: nil).update_all(active: false)
  end
end
