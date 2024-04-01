json.extract! book, :id, :cover, :title, :author, :description, :genre, :publish_company, :page, :year_publish, :created_at, :updated_at
json.url book_url(book, format: :json)
