require 'test_helper'

class BarTest < ActiveSupport::TestCase
  def setup
    @user = users(:eirik)
  end

  test "Must have a title" do
    bar = Bar.new(title: "", seo_description: "En beskrivelse", body: "Har en kropp med litt tekst")
    assert_not bar.valid?
  end

  test "Is valid with valid title" do
    bar = Bar.new(title: "En tittel", seo_description: "En beskrivelse", body: "Har en kropp med litt tekst")
    assert bar.valid?
  end

  test "Must have a title with more than 3 characters" do
    bar = Bar.new(title: "En", seo_description: "En beskrivelse", body: "Har en kropp med litt tekst")
    assert_not bar.valid?, "Har ikke nok antall karakterer i tittelen"
  end

  test "Must have a Seo Descrption" do
    bar = Bar.new(title: "En kjempe tittel", seo_description: "", body: "Har en kropp med litt tekst")
    assert_not bar.valid?
  end

  test "Must have minimum 5 characters Seo Descrption" do
    bar = Bar.new(title: "En kjempe tittel", seo_description: "EnTo", body: "Har en kropp med litt tekst")
    assert_not bar.valid?
  end

  test "Valid Seo Descrption" do
    bar = Bar.new(title: "En kjempe tittel", seo_description: "EnTotre", body: "Har en kropp med litt tekst")
    assert bar.valid?
  end

  test "Must have a Body" do
    bar = Bar.new(title: "En kjempe tittel", seo_description: "En Ok tittel", body: "")
    assert_not bar.valid?
  end

  test "Body must have at least 10 characters" do
    bar = Bar.new(title: "En kjempe tittel", seo_description: "En Ok tittel", body: "snart")
    assert_not bar.valid?
  end

  test "Body is valid" do
    bar = Bar.new(title: "En kjempe tittel", seo_description: "En Ok tittel", body: "Her komemr det noe snart")
    assert bar.valid?
  end


end
