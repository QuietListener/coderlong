#encoding:utf-8

class Fisher

  BaseUrl = "https://www.googleapis.com/customsearch/v1element?key=AIzaSyCVAXiUzRYsML1Pv6RwSG1gunmMikTzQqY&rsz=filtered_cse&num=10&hl=zh_CN&prettyPrint=false&source=gcsc&gss=.com&sig=374942b9f66402975ad19789cb8ab24c&cx=015520382618724669377:fkqzivuiqx8&sort=&googlehost=www.google.com&oq=java&gs_l=partner.12...0.0.0.16294.0.0.0.0.0.0.0.0..0.0.gsnos%2Cn%3D13...0.0..1ac..25.partner..0.0.0.&nocache=1461331442126&q="

  Timeout = 3
  def self.fish(bait)
    url= BaseUrl + bait;
    url = url.gsub(/\s/,"%20")
    res = FishClient.new().get_result(url)

    if res.status !=200
      return -1,nil
    end


    return res.status,JSON.parse(res.content)
  end

end