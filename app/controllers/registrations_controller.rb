class RegistrationsController < Devise::RegistrationsController
  protect_from_forgery with: :null_session, :if => Proc.new { |c| c.request.format == 'application/json' }


  def create

    p "In personCreate"
    @user = User.create(user_params)
    if @user.save
      render :json => {:state => {:code => 0}, :data => @user }
    else
      render :json => {:state => {:code => 1, :messages => @user.errors.full_messages} }
    end

  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end