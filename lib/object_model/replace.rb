def replace(array, from, to)
  #e=elm, i=index が格納される。-> 一致したところで置換する。
  array.each_with_index { |e,i|
    array[i] = to if e == from
  }
end

require 'test/unit'

class StringExtentionsTest < Test::Unit::TestCase
  def test_replace
    book_topics = ['html', 'java', 'css']
    replace(book_topics, 'java', 'ruby')
    expected = ['html', 'ruby', 'css']
    assert_equal expected, book_topics
  end
end

