class MinneapolisCliApp::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.findmeglutenfree.com/search?a=minneapolis&lat=44.9778&lng=-93.265&ga=Minneapolis%2C%20MN"))
  end

  def scrape_restaurant #scrape_new
    self.get_page.css(".search-list-item-content")
  end

  def find_restaurant #make_restaurant
    scrape_restaurant.each do |doc|
      MinneapolisCliApp::Restaurant.new(
      doc.search("a.data-details-url")[0].text,
      doc.search("span.pull-right.biz-price")[0].text,
      doc.search("span.biz-num-ratings")[0].text,
      doc.search("h4.data-address")[0].text,
      doc.search("h3")[0].text
        )

    end
  end
end
