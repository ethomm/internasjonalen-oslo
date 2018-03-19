require 'test_helper'

class BarTest < ActiveSupport::TestCase
  def setup
    @user = users(:eirik)
  end

  test "Must have a title" do
    bar = Bar.new(title: "", seo_description: "En beskrivelse", body: "Har en kropp med litt tekst")
    assert_not bar.valid?
  end
end
