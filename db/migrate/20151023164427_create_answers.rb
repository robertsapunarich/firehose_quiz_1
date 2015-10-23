class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
    	t.text :response
      t.timestamps
    end
  end
end
