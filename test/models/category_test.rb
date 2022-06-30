require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = Category.new(name: "Veggies")
  end
  test "category name should be present" do
    assert @category.valid?
  end

  test "category name should be unique" do
    @category.save
    @category2 = Category.new(name: "Veggies")
    assert_not @category2.valid?
    assert @category2.errors[:name].any?
  end

  test "category name should be at least 3 characters" do
    @category.name = "Ve"
    assert_not @category.valid?
    assert @category.errors[:name].any?
  end

  test "category name should be at most 50 characters" do
    @category.name = "Veggies" * 20
    assert_not @category.valid?
    assert @category.errors[:name].any?
  end

  test "catefory name should not contain special characters" do
    @category.name = "Veggies!"
    assert_not @category.valid?
    assert @category.errors[:name].any?
  end
end