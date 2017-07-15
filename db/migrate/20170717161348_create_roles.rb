class CreateRoles < ActiveRecord::Migration
  def change
    create_table(:roles, :comment => '角色表') do |t|
      t.string :name, comment: '角色名称'
      t.string :role_no, comment: '角色编号'
      t.references :resource, :polymorphic => true
      t.string :module, comment: '角色所属模块(网格管理,预警中心)'
      t.text :description, commment: '角色描述'
      t.boolean :published, null: false, default: true, comment: '是否启用'
      t.boolean :deleted, null: false, default: false, comment: '是否删除'
      t.boolean :is_system, null: false, default: false, comment: '是否为系统角色。如果是,则不能删除'
      t.string :display_name, comment: '角色显示名称'

      t.string :created_by, null: false, comment: '创建人'
      t.string :updated_by, null: false, comment: '修改人'
      t.integer :created_user_id, null: false, comment: '创建人'
      t.integer :updated_user_id, null: false, comment: '修改人'

      t.timestamps
    end

    create_table(:users_roles, :id => false, :comment => '用户角色关联表') do |t|
      t.references :user
      t.references :role
    end

    add_index(:roles, :name)
    add_index(:roles, [:name, :resource_type, :resource_id])
    add_index(:users_roles, [:user_id, :role_id])
  end
end
