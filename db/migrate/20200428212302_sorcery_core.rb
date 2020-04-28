# frozen_string_literal: true

class SorceryCore < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :email,            null: false
      t.string :crypted_password, null: false
      t.string :salt,             null: false
      t.string :username,         null: false
      t.timestamps                null: false
    end

    add_index :authors, :email, unique: true
  end
end
