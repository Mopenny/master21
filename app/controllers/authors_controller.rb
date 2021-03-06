class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
    @author.books.build
  end

  def create
    Author.create(author_params)

    redirect_to authors_path
  end

  private

  def author_params
    params.require(:author).permit(:name, books_attributes: [:id, :title, :_destroy])
  end
end
