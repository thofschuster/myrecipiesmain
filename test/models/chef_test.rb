require 'test_helper'
class ChefTest < ActiveSupport::TestCase

  def setup
    @chef = Chef.new(name: "John", email: "john@example.com")

  end

  test "chef should be valid" do
    assert @chef.valid?
  end

  test "chefname shoul be present" do
    @chef.name = " "
    assert_not @chef.valid?
  end

  test "chefname should not be to long" do
    @chef.name = "a" * 41
    assert_not @chef.valid?
  end

  test "chefname should not be to short" do
    @chef.name = "aa"
    assert_not @chef.valid?
  end

  test "email shoul be present" do
    @chef.email = " "
    assert_not @chef.valid?
  end

  test "email lenght should be within bounds" do
    @chef.email = "a" * 101 + "@example.com"
    assert_not @chef.valid?
  end


end
