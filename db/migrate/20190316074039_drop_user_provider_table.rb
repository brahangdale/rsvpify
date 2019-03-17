class DropUserProviderTable < ActiveRecord::Migration
  def change
  end
  def up
    drop_table :user_provider
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
