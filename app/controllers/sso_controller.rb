class SsoController < ApplicationController
  def logout
    service = params[:service] or raise "No service specified"
    raise "Unknow service" unless Settings.configured_services.include?(service)
    
    cookies.delete('JSESSIONID', path: "/#{service}")

    redirect_to "/#{service}/delete_cookie"
  end

  def delete_cookie
    service = params[:service] or raise "No service specified"
    raise "Unknow service" unless Settings.configured_services.include?(service)

    if service != Settings.configured_services.last
      next_service = Settings.configured_services[Settings.configured_services.index(service) + 1]
      redirect_to "/#{next_service}/sso_logout" and return
    else
      redirect_to '/'
    end
  end
end