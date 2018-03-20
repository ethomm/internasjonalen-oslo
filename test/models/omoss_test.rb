require 'test_helper'

class OmossTest < ActiveSupport::TestCase
  def setup
    @omoss = omosses(:one)
  end

  test "Om oss is valid" do
    omoss = Omoss.new(title: @omoss.title, ingress: @omoss.ingress, body: @omoss.body)
    assert omoss.valid?
  end

  test "Om oss must have a title" do
    omoss = Omoss.new(title: "", ingress: @omoss.ingress, body: @omoss.body)
    assert_not omoss.valid?
  end

  test "Om oss must have a title longer than 3 characters" do
    omoss = Omoss.new(title: "123", ingress: @omoss.ingress, body: @omoss.body)
    assert_not omoss.valid?
  end

  test "Om oss must have an ingress" do
    omoss = Omoss.new(title: @omoss.title, ingress: "", body: @omoss.body)
    assert_not omoss.valid?
  end

  test "Om oss must have an ingress longer than 5 charachters" do
    omoss = Omoss.new(title: @omoss.title, ingress: "12345", body: @omoss.body)
    assert_not omoss.valid?
  end

  test "Om oss must have a body" do
    omoss = Omoss.new(title: @omoss.title, ingress: @omoss.ingress, body: "")
    assert_not omoss.valid?
  end

  test "Om oss must have a body longer than 5 characters" do
    omoss = Omoss.new(title: @omoss.title, ingress: @omoss.ingress, body: "12345")
    assert_not omoss.valid?
  end

end
