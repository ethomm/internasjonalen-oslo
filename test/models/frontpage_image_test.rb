require 'test_helper'

class FrontpageImageTest < ActiveSupport::TestCase
  def setup
    @frontpageimage = frontpage_images(:one)
  end

  test 'frontpage images is valid' do
    image = create_photo('files/test.png')
    frontpageimage = FrontpageImage.new(image_url: image, fotograf: "Dette er valgfritt")
    assert frontpageimage.valid?
  end

  test 'frontpage images is must have an image' do
    image = create_photo('files/test.png')
    frontpageimage = FrontpageImage.new(image_url: "", fotograf: "Dette er valgfritt")
    assert_not frontpageimage.valid?
  end

  test 'frontpage images Accepts PNG' do
    image = create_photo('files/test.png')
    frontpageimage = FrontpageImage.new(image_url: image, fotograf: "Dette er valgfritt")
    assert frontpageimage.valid?
  end

  test 'frontpage images Accepts GIF' do
    image = create_photo('files/test.gif')
    frontpageimage = FrontpageImage.new(image_url: image, fotograf: "Dette er valgfritt")
    assert frontpageimage.valid?
  end

  test 'frontpage images Accepts JPG' do
    image = create_photo('files/test.jpg')
    frontpageimage = FrontpageImage.new(image_url: image, fotograf: "Dette er valgfritt")
    assert frontpageimage.valid?
  end

  test 'frontpage images does not accept PDF' do
    image = create_photo('files/test.pdf')
    frontpageimage = FrontpageImage.new(image_url: image, fotograf: "Dette er valgfritt")
    assert_not frontpageimage.valid?
  end
end
