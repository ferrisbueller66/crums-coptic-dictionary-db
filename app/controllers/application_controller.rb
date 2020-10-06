class ApplicationController < ActionController::Base
    def welcome
        @entry = Entry.new
        @chapters = Chapter.all
        render :welcome
    end
end
