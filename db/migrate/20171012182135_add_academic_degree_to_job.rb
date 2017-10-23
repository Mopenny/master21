class AddAcademicDegreeToJob < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :academic_degreer, :string
  end
end
