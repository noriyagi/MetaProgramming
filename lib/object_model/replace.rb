
class Array
  def substitude(from, to)
    #e=elm, i=index が格納される。-> 一致したところで置換する。
    each_with_index { |e,i|
      self[i] = to if e == from
    }
  end
end

require 'test/unit'

class StringExtentionsTest < Test::Unit::TestCase
  def test_replace
    book_topics = ['html', 'java', 'css']
    book_topics.substitude('java', 'ruby')
    expected = ['html', 'ruby', 'css']
    assert_equal expected, book_topics
  end
end

