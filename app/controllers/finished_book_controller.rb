class FinishedBookController < ApplicationController
  def index
    @finished_books = Book.joins(:book_current).where(book_current: { current_type: 'Finished' })
  end
end
