class Amazon
  alias
  :old_reviews_of :reviews_of

  def reviews_of(book)
    start = Time.now
    result = old_reviews_of book
    time_taken = Time.now - start
    puts "reviews_of() took more than #{time_taken} seconds" if time_taken > 2
    result
  rescue
    puts "reviews_of() failed"
    []
  end
end