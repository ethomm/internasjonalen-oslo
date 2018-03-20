require 'test_helper'

class BarimageTest < ActiveSupport::TestCase
  def setup
    @user = users(:eirik)
    @bar = bars(:one)
  end

  test "Bar Image is valid" do
    image = create_photo('files/test.png')
    barimage = Barimage.new(bar_id: @bar.id, image_url: image, description: "En beskrivelse av bildet")

    assert barimage.valid?, "#{barimage.errors.full_messages} ==============  #{barimage.image_url}"
  end

  test "Bar Image needs to belong to a bar" do
    image = create_photo('files/test.png')
    barimage = Barimage.new(bar_id: 0, image_url: "www.bilder.no/bilde.jpg", description: "En beskrivelse av bildet")
    assert_not barimage.valid?
  end

  test "Bar Image canot be blank" do
    barimage = Barimage.new(bar_id: @bar.id, image_url: "", description: "En beskrivelse av bildet")
    assert_not barimage.valid?,"Det er tydeligvis ok å sende inn blanke bilder "
  end

  test "Barimage should accept PNG files to upload" do
    image = create_photo('files/test.png')
    barimage = Barimage.new(bar_id: @bar.id, image_url: image, description: "En beskrivelse av bildet")
    assert barimage.valid?,"#{barimage.errors.full_messages} ==============  #{barimage.image_url} "
  end

  test "Barimage should accept GIF files to upload" do
    image = create_photo('files/test.gif')
    barimage = Barimage.new(bar_id: @bar.id, image_url: image, description: "En beskrivelse av bildet")
    assert barimage.valid?,"#{barimage.errors.full_messages} ==============  #{barimage.image_url} "
  end 

  test "Barimage should accept JPG files to upload" do
    image = create_photo('files/test.jpg')
    barimage = Barimage.new(bar_id: @bar.id, image_url: image, description: "En beskrivelse av bildet")
    assert barimage.valid?,"#{barimage.errors.full_messages} ==============  #{barimage.image_url} "
  end  

  test "Barimage should not allow PDFs to upload" do
    image = create_photo('files/test.pdf')
    barimage = Barimage.new(bar_id: @bar.id, image_url: image, description: "En beskrivelse av bildet")
    assert_not barimage.valid?,"#{barimage.errors.full_messages} ==============  #{barimage.image_url} "
  end

  test "Barimage have description" do
    image = create_photo('files/test.jpg')
    barimage = Barimage.new(bar_id: @bar.id, image_url: image, description: "")
    assert_not barimage.valid?,"#{barimage.errors.full_messages} ==============  #{barimage.image_url} "
  end

  test "Barimage description should have minimum 5 characters" do
    image = create_photo('files/test.jpg')
    barimage = Barimage.new(bar_id: @bar.id, image_url: image, description: "1234")
    assert_not barimage.valid?,"#{barimage.errors.full_messages} ==============  #{barimage.image_url} "
  end  
end
