class CreateConditionAllTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :condition_all_texts do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.string :condition_text

      t.timestamps
    end
  end
end
