#coding:utf-8
class UserMailer < ActionMailer::Base
  # default :from => "notify@socialdatamax.com"
  default :from => "lijinmin@xjgreat.com"
  default :to=> "lijinmin@xjgreat.com"
  def send_email(params)
  	email = "lijinmin@xjgreat.com"
  	@name = params[:xing]
  	@phone = params[:dian]
  	@email = params[:you]
  	@content = params[:liu]
  	mail(to: email, subject: "果园留言")
  end
end