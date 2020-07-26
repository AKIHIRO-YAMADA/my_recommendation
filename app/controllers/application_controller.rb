class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search_movie

  # このアクションを追加
  def after_sign_in_path_for(resource)
    root_path
  end

  protected

  def set_search_movie
    @q = Movie.page(params[:page]).per(9).ransack(params[:q])
    @movies = @q.result.page(params[:page]).per(9)
    # 検索バー表示のために常に@qを生成する
    # 検索時以外params[:q]はnilだが、空のransackオブジェクト生成の動作になる
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :sex, :profile_iamge, :age, :email, :account_status])
    end
end
