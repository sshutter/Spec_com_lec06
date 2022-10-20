class ApplicationController < ActionController::Base
    private
        def is_login?
            return session[:logged_in] == true
        end

        def must_logged_in
            if is_login?
                return true
            else 
                redirect_to 'main/login', notice: 'You must login before accessing this page.'
            end
        end
    
end
