class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.text :employer
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
