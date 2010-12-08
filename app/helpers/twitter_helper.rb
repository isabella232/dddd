module TwitterHelper
  def twitter_avatar(name, size)
    return "" if name.blank?
    content_tag :div, :class => "logo" do
      link_to "http://twitter.com/#{name.downcase}" do
        image_tag "http://avatar.statusok.com/#{name.downcase}?size=#{size}", :width => "#{size}px", :height => "#{size}px"
      end
    end
  end
end