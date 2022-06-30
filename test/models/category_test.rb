require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "category name should be present" do
    @category = Category.new(name: "Veggies")
    assert @category.valid?
  end

  test "category name should be unique" do
    @category = Category.new(name: "Veggies")
    @category.save
    @category2 = Category.new(name: "Veggies")
    assert_not @category2.valid?
    assert @category2.errors[:name].any?
  end

  test "category name should be at least 3 characters" do
    @category = Category.new(name: "Ve")
    assert_not @category.valid?
    assert @category.errors[:name].any?
  end

  test "category name should be at most 50 characters" do
    @category = Category.new(name: "Veggies" * 20)
    assert_not @category.valid?
    assert @category.errors[:name].any?
  end
end