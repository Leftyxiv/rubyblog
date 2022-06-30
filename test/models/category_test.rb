require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "category name should be present" do
    @category = Category.new(name: "Veggies")
    assert_not category.valid?
    assert category.errors[:name].any?
  end
end