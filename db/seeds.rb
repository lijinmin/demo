# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# encoding utf-8

# if User.count > 0
#   $stdout.puts "You have execute 'rake db:seed' before, so can't execute anymore unless clear database data"
# end



Permission.find_or_create_by({name: '角色管理', display_name: '角色管理', action: 'manage', subject_class: 'Role', is_system: true, module: '网格管理', tab: '权限管理',created_by: 'lijinmin@xjgreat.com',updated_by: 'lijinmin@xjgreat.com',created_user_id: 1,updated_user_id: 1})
Permission.find_or_create_by({name: '用户管理', display_name: '用户管理', action: 'manage', subject_class: 'User', is_system: true, module: '网格管理', tab: '权限管理', created_by: 'lijinmin@xjgreat.com',updated_by: 'lijinmin@xjgreat.com',created_user_id: 1,updated_user_id: 1})

Permission.find_or_create_by({name: '查看校级', display_name: '查看校级', is_system: true, tab: '数据权限',created_by: 'lijinmin@xjgreat.com',updated_by: 'lijinmin@xjgreat.com',created_user_id: 1,updated_user_id: 1})
Permission.find_or_create_by({name: '查看院级', display_name: '查看院级', is_system: true, tab: '数据权限',created_by: 'lijinmin@xjgreat.com',updated_by: 'lijinmin@xjgreat.com',created_user_id: 1,updated_user_id: 1})
Permission.find_or_create_by({name: '查看班级', display_name: '查看班级', is_system: true, tab: '数据权限',created_by: 'lijinmin@xjgreat.com',updated_by: 'lijinmin@xjgreat.com',created_user_id: 1,updated_user_id: 1})

Role.find_or_create_by({name: 'admin', display_name: '管理员', is_system: true, role_no: '001',created_by: 'lijinmin@xjgreat.com',updated_by: 'lijinmin@xjgreat.com',created_user_id: 1,updated_user_id: 1}).permissions << Permission.where(name: %w(角色管理 用户管理))

Role.find_or_create_by({name: '校长', display_name: '校长', is_system: false, role_no: '002',created_by: 'lijinmin@xjgreat.com',updated_by: 'lijinmin@xjgreat.com',created_user_id: 1,updated_user_id: 1}).permissions << Permission.where(name: %w(查看校级))
Role.find_or_create_by({name: '院长', display_name: '院长', is_system: false, role_no: '003',created_by: 'lijinmin@xjgreat.com',updated_by: 'lijinmin@xjgreat.com',created_user_id: 1,updated_user_id: 1}).permissions << Permission.where(name: %w(查看院级))
Role.find_or_create_by({name: '辅导员', display_name: '辅导员', is_system: false, role_no: '004',created_by: 'lijinmin@xjgreat.com',updated_by: 'lijinmin@xjgreat.com',created_user_id: 1,updated_user_id: 1}).permissions << Permission.where(name: %w(查看班级))

Role.find_or_create_by({name: '校长', display_name: '校长', is_system: false, role_no: '002',created_by: 'lijinmin@xjgreat.com',updated_by: 'lijinmin@xjgreat.com',created_user_id: 1,updated_user_id: 1}).permissions << Permission.where(name: %w(网格查看 网格上报 网格处理 网格确认))
Role.find_or_create_by({name: '院长', display_name: '院长', is_system: false, role_no: '003',created_by: 'lijinmin@xjgreat.com',updated_by: 'lijinmin@xjgreat.com',created_user_id: 1,updated_user_id: 1}).permissions << Permission.where(name: %w(网格查看 网格上报 网格处理))
Role.find_or_create_by({name: '辅导员', display_name: '辅导员', is_system: false, role_no: '004',created_by: 'lijinmin@xjgreat.com',updated_by: 'lijinmin@xjgreat.com',created_user_id: 1,updated_user_id: 1}).permissions << Permission.where(name: %w(网格查看 网格上报))


