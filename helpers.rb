def antispam hide
  encoded = ""
  "document.write('#{hide}');".each_char { |c| encoded += "%#{c.ord.to_s(16)}" }
  "<script>eval(decodeURIComponent('#{encoded}'));</script>"
end

def descends area, url
  url[0..(area.length + 1)].to_s == "/#{area.to_s}/"
end

def title (default)
  @title ||= default
end