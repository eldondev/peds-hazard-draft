class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.date :date
      t.string :email
      t.string :name
      t.string :description
      t.file :picfile

      t.timestamps
    end
  end
end
