module ApplicationHelper

  def get_image_url(cas)
     sts=cas.split(//)

     url='/cas_img/'+sts[0].to_s+'/'+sts[1].to_s+'/'+cas+".png"
  end
end
