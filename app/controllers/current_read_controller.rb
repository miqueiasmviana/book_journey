class CurrentReadController < ApplicationController
  def index
    @current_reads = Book.joins(:book_current).where(book_current: { current_type: 'Current Reading' })
  end
end
