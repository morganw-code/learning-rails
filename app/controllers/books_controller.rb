class BooksController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :setup_data
    
    def index
        render json: @data
    end
    
    #Show a single book
    def show
        session[:books].each do |book|
            if(book[:id] == params[:id])
                render json: book
            end
        end
    end
    
    #Create a new book
    def create
        id = params[:id]
        title = params[:title]
        author = params[:author]
        new_book = { id: id, title: title, author: author }
    end
    
    #Update a book
    def update
        title = params[:title]
        author = params[:author]
        for book in session[:books]
            if(book[:id] == params[:id])
                book[:title] = title
                book[:author] = author
                render json: book
            end
        end
    end
    
    #Remove a book
    def destroy
        session[:books] = session[:books].select { |book| book[:id] != params[:id] }
        render json: session[:books]
    end
    
    private
    def setup_data
        session[:books] = [
            { id: "1", title: "Harry Potter", author: "J.K Rowling" },
            { id: "2", title: "Name of the wind", author: "Patrick Rothfuss" }
        ] unless session[:books]
    end
end