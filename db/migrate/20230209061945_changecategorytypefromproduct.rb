class Changecategorytypefromproduct < ActiveRecord::Migration[6.1]
  def change
    reversible do |dir|
      change_table :products do |t|
        dir.up { t.change :category, :string }
        dir.down { t.change :category, :integer }
      end
    end
  end
end
