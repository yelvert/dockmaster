class CreateBuildTemplates < ActiveRecord::Migration
  def change
    create_table :build_templates do |t|
      t.string :name
      t.string :from
      t.text :body
      t.string :cmd
      t.timestamps
    end
  end
end
