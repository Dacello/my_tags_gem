class CreateActsAsTaggableTags < ActiveRecord::Migration
  def change
    create_table :acts_as_taggable_tags do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
