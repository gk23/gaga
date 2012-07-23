require 'test_helper'

class ZhihusHelperTest < ActionView::TestCase
	test "run extract method" do 
        extract("http://www.zhihu.com/question/20373957")
    end
end
