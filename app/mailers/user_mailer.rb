class UserMailer < ActionMailer::Base
	default from: "DBCfinalproject@gmail.com"


	def student_welcome_email(user)
		@user = user
		@url  = log_in_path
		mail(:to => user.email, :subject => "Welcome to DBConnect")
	end

	def employer_welcome_email(user)
		@user = user
		@url  = log_in_path
		@feedback_url = "DBCfinalprojectfeedback.com"
		mail(:to => user.email, :subject => "Welcome to DBConnect")
	end

	def pending_email(user)
		@user = user
		@url  = log_in_path
		mail(:to => user.email, :subject => "Welcome to DBConnect Your Application Is Pending Approval")
	end

	def denial_email(user)
		@user = user
		@url = root_path
		mail(:to => user.email, :subject => "DBConnect Approval Status")
	end

  def employer_miss_us_email(user)
  	@user = user
  	@urls = root_path
  	mail(:to => user.email, :subject => "We Miss You!")
  end

end