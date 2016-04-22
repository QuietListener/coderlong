#encoding:utf-8

class Fisher

  BaseUrl = "http://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&rsv_idx=1&tn=baidu&wd="

  Timeout = 3
  def self.fish(bait)
    url= BaseUrl + bait;
    res = FishClient.new().get_result(url)
    return res
  end

end