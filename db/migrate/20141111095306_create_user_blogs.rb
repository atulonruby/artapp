class CreateUserBlogs < ActiveRecord::Migration
  def change
    create_table :user_blogs do |t|
    	t.references :user
    	t.references :blog
      t.timestamps
    end

    add_index :user_blogs, :user_id
    add_index :user_blogs, :blog_id
  end
end
