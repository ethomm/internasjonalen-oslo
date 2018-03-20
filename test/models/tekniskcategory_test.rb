require 'test_helper'

class TekniskcategoryTest < ActiveSupport::TestCase
  def setup
    @category = tekniskcategories(:one)
  end

  test "This is a valid category" do
    category = Tekniskcategory.new(title: @category.title)
    assert category.valid?
  end

  test "This is not a valid category" do
    category = Tekniskcategory.new(title: "")
    assert_not category.valid?
  end

  test "Teknisk category title mus be at least 3 characters long" do
    category = Tekniskcategory.new(title: "123")
    assert_not category.valid?
  end
end
