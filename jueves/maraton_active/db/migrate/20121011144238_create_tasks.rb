class CreateTasks < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
    end

    create_table :games do |t|  #id users, id decks
      t.belongs_to :user, index: true
      t.belongs_to :deck, index: true
    end

    create_table :decks do |t|
      t.string :subject
    end

    create_table :questions do |t|  #id decks
      t.belongs_to :deck, index: true
      t.string :text      
    end

    create_table :answers do |t|
      t.belongs_to :question, index: true
      t.string :option
      t.boolean :status
    end

    create_table :statistics do |t|
      t.belongs_to :game, index: true
      t.belongs_to :question, index: true
      t.belongs_to :answer, index: true
      t.boolean :score      
    end
  end
end
