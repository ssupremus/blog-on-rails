# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery # with: :exception
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    redirect_to root_path
  end
end
