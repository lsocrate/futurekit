class AddQuestionsToCard < ActiveRecord::Migration
  def change
  	    add_column :cards, :question0, :integer
  	    add_column :cards, :question1, :integer
  	    add_column :cards, :question2, :integer
  	    add_column :cards, :question3, :integer
  	    add_column :cards, :question4, :integer
  	    add_column :cards, :question5, :integer
  	    add_column :cards, :question6, :integer
  	    add_column :cards, :question7, :integer
  	    add_column :cards, :question8, :integer
  	    add_column :cards, :question9, :integer
  end
end
