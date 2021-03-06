class CreateJoinTablePageSection < ActiveRecord::Migration
  def change
    create_join_table :pages, :sections do |t|
      t.index [:page_id, :section_id]
      t.index [:section_id, :page_id]
    end
  end
end
