# Reference: http://ruby.railstutorial.org/ruby-on-rails-tutorial-book

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, index: true
      t.boolean :admin, default: false
      t.string :password_digest
      t.string :remember_token, index: true
      t.timestamps
    end
  end
end
