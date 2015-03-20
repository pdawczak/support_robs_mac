class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_supporters_summary

  def set_supporters_summary
    @supporters_count = Supporter.count
    @recent_supporters = Supporter.order("created_at DESC").take(10)
  end
end
