class CreatesInitTables < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string :email, null: false
      t.string :password, null: false
      t.string :nickname, default: :email
      t.timestamps null: false
    end

    create_table :hunts do |t|
      t.references :user
      t.string :name, null: false
      t.integer :level, null: false
      t.string :city 
      t.integer :target_time
      t.text  :description, null: false
      t.timestamps null: false
    end

    create_table :play_sessions do |t|
      t.references :user, :hunt, :location
      t.boolean :complete,default: false,  null: false
      t.boolean :active,default: false, null: false
      t.integer :current_hint, null: false
      t.integer :used_hints, null: false, default: 0
      t.timestamps null: false
    end

    create_table :locations do |t|
      t.references :hunt, null: false 
      t.decimal :lat, null: false  
      t.decimal :lon, null: false 
      t.string :clue, null: false 
      t.string :name, null: false 
      t.timestamps null: false
    end

    create_table :hints do |t|
      t.references :location, null: false 
      t.string :body, null: false 
      t.timestamps null: false
    end

  end
end
