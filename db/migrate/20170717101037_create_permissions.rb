class CreatePermissions < ActiveRecord::Migration
  def change
    create_table(:permissions, :comment => '权限表') do |t|
      t.string :name, comment: '权限名称'
      t.string :action, comment: '操作权限, 如: read, create, update, delete...'
      t.string :subject_class, commment: '数据表权限。如果数据表不存在, 则为权限标识'
      t.integer :subject_id, comment: '数据表中某条数据的权限'
      t.string :condition, comment: '数据表数据的条件权限'
      t.string :type, comment: '权限类型, 当值为admin时,表示admin管理员权限'
      t.string :module, comment: '权限所属模块(网格管理,预警中心)'
      t.string :tab, comment: '权限所属组(学生事件管理,网格化后端管理,用户管理,角色管理)'
      t.string :display_name, comment: '权限显示名称'

      t.text :description, commment: '权限描述'
      t.boolean :published, null: false, default: true, comment: '是否启用'
      t.boolean :is_system, null: false, default: false, comment: '是否为系统权限。如果是,则不能删除'
      t.boolean :deleted, null: false, default: false, comment: '是否删除'

      t.string :created_by, null: false, comment: '创建人'
      t.string :updated_by, null: false, comment: '修改人'
      t.integer :created_user_id, null: false, comment: '创建人'
      t.integer :updated_user_id, null: false, comment: '修改人'

      t.timestamps
    end

    create_table(:permissions_users, :id => false, :comment => '权限用户关联表') do |t|
      t.references :permission
      t.references :user
    end

    create_table(:permissions_roles, :id => false, :comment => '权限角色关联表') do |t|
      t.references :permission
      t.references :role
    end

    add_index(:permissions, :name)
    add_index(:permissions, [:name, :subject_class, :subject_id], {name: 'index_permission_on_name_and_subject'})
    add_index(:permissions_users, [:permission_id, :user_id])
    add_index(:permissions_roles, [:permission_id, :role_id])
  end
end
