class String
    def to_alphanumeric
        gsub /[^\w\s]/, ''   #"ワード集合"もしくは"スペース"以外は削除する。
    end
end

require 'test/unit'

class StringExtentionsTest < Test::Unit::TestCase
  def test_strips_non_alphanumeric_characters
    assert_equal '3 the Magic Number', '#3, the *Magic, Number*?'.to_alphanumeric
  end
end