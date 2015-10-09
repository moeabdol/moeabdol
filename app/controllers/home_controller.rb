class HomeController < ApplicationController
  def index
  end

  def send_email
    ContactMailer.send_contact_mail(params).deliver_now
    respond_to do |format|
      format.html { redirect_to home_index_path }
      format.js
    end
  end

  def msales
  end

  def livestock
  end

  def pca
  end

  def pos
  end
end
