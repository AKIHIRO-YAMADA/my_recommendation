class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

# このアクションを追加
  def after_sign_in_path_for(resource)
    root_path
  end

  	protected
	def configure_permitted_parameters
	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :sex, :profile_iamge, :age, :email, :account_status ])
  #sign_upの際にnameのデータ操作を許。追加したカラム。
	end
end
