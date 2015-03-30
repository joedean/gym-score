require 'nokogiri'
require 'open-uri'

class MSO
  URL = 'http://www.meetscoresonline.com/results/16915/298178'
  EventData = Struct.new(:score, :place)

  attr_accessor :url, :events

  def initialize(url = nil)
    @url = url || URL
    @events = {}
  end

  def scrape
    fetch_event_rows.each do |row|
      event_name = row.xpath("th/text()").to_s.strip
      events[event_name.to_sym] = EventData.new(row.xpath("td/span[1]/text()").to_s.strip,
                                                row.xpath("td/span[2]/text()").to_s.strip)
    end
    events
  end

  def fetch_event_rows
    fetch_html_page.css("table.table-striped tbody tr")
  end

  private
  def fetch_html_page
    Nokogiri::HTML(open(url), nil, "UTF-8")
  end
end
