class PersonController < ApplicationController

  skip_before_filter :verify_authenticity_token
  before_filter :restrict_access

  def create

    @p = Person.create(:name=>params[:name],:age=>params[:age],:sex=>params[:sex])
    render json: @p , :status=>201

  end

  def get_person_by_name

    @p = Person.find_by_name(params[:name])

    render json: @p , :status=>200

  end


  def get_all_persons

    PersonHelper.all_validate
    @persons = Person.all
    render json: @persons , :status=>200

  end
  protected
  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(access_token: token)
  end
end

  end