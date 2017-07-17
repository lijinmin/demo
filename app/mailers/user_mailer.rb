#coding:utf-8
class UserMailer < ActionMailer::Base
  # default :from => "notify@socialdatamax.com"
  default :from => "1005277881@qq.com"
  default :to=> "1005277881@qq.com"
  def send_email(params)
  	email = "1005277881@qq.com"
  	@name = params[:xing]
  	@phone = params[:dian]
  	@email = params[:you]
  	@content = params[:liu]
  	mail(to: email, subject: "果园留言")
  end
end