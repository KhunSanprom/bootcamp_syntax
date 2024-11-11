# book_service.rb
class BookService
  def initialize(repository = BookRepository.new)
    @repository = repository
  end

  def add_book(id,title,author)
    @repository.add
    def id
      return id
    end

    def title
      return title
    end

    def author
      return author
    end
  end

  def update_book()
  end

  def delete_book()
  end

  def list_books
  end
end