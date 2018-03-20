require 'test_helper'

class TekniskitemTest < ActiveSupport::TestCase
  def setup
    @category = tekniskcategories(:one)
    @item = tekniskitems(:one)
  end

  test "This is a valid item" do
    item = Tekniskitem.new(title: @item.title, antall: @item.antall)
    assert item.valid?
  end

  test "Teknisk item must have a title" do
    item = Tekniskitem.new(title: "", antall: @item.antall)
    assert_not item.valid?
  end

  test "Teknisk item must have a title longer than 2 characters" do
    item = Tekniskitem.new(title: "12", antall: @item.antall)
    assert_not item.valid?
  end

  test "Teknisk item must have antall" do
    item = Tekniskitem.new(title: @item.title, antall: "")
    assert_not item.valid?
  end

  test "Teknisk item antall must be a digit" do
    item = Tekniskitem.new(title: @item.title, antall: "H")
    assert_not item.valid?
  end
end
