class WantreadController < ApplicationController
  def index
    @wantreads = Book.joins(:book_current).where(book_current: { current_type: 'Want to Read' })
  end
end
