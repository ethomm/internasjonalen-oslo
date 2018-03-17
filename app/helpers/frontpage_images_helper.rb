module FrontpageImagesHelper
  def image_status status
    case status
    when "unpublished"
      "Bildet er ikke publisert"
    when "published"
      "Bildet er publisert"
    end
  end

  def image_btn image
    image.published? ? "Avpubliser" : "Publiser"
  end

  def image_btn_style image
    image.published? ? "btn-warning" : "btn-success"        
  end

end
