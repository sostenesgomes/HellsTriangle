require_relative 'hell_triangle'
require 'test/unit'

class HellTriangleTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Test invalid triangles
  def test_invalid_triangle
    triangle1 = [1, 1, 1, 1]
    triangle2 = [[1], 1, 1, 1]
    triangle3 = [[1], [1,2,3], 1, 1]

    assert_equal(false, HellTriangle.new.resolve(triangle1))
    assert_equal(false, HellTriangle.new.resolve(triangle2))
    assert_equal(false, HellTriangle.new.resolve(triangle3))
  end

  # Test resolv triangle with success
  def test_resolve_triangle
    assert_equal(26, HellTriangle.new.resolve([[6], [3,5], [9,7,1], [4,6,8,4]]))
    assert_equal(19, HellTriangle.new.resolve([[1], [2,3], [4,5,6], [7,8,9,9]]))
    assert_equal(200, HellTriangle.new.resolve([[10], [20,30], [40,50,60], [70,80,90,100]]))
    assert_equal(553, HellTriangle.new.resolve([[52], [300,25], [58,187,99], [2,14,2,140]]))
    assert_equal(20, HellTriangle.new.resolve([[5], [5,5], [5,5,5], [5,5,5,5]]))
  end
end