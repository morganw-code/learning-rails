class PagesController < ApplicationController
    def index
    end
    
    def sayhi
        render plain: "hi"
    end

    def redirectme
        redirect_to "/redirectedto"
    end

    def redirectedto
        render plain: "You were redirected here!"
    end
end