require 'rails_helper'

RSpec.describe MSO, type: :model do
  let(:mso) { MSO.new }
  let(:html_stub) { Nokogiri::HTML(event_table).css("tr") }

  before do
    allow(mso).to receive(:fetch_event_rows).and_return(html_stub)
  end

  describe "#scrape" do
    before do
      mso.scrape
    end

    it "parses the scores" do
      expect(mso.events[:Floor].score).to eql("11.000")
    end

    it "parses the place" do
      expect(mso.events[:Floor].place).to eql("2")
    end
  end

  def event_table
    <<-EOHTML
\r\n                    <tr>\r\n                      <th>Floor</th>\r\n                      <td class=\"medals medals-silver\">\n<span class=\"score\">11.000</span><span class=\"place pull-right\">2</span>\n</td>\r\n                    </tr>\r\n                    <tr>\r\n                      <th>Pommel</th>\r\n                      <td>\n<span class=\"score\">10.450</span><span class=\"place pull-right\">4</span>\n</td>\r\n                    </tr>\r\n                    <tr>\r\n                      <th>Rings</th>\r\n                      <td>\n<span class=\"score\">10.250</span><span class=\"place pull-right\">6T</span>\n</td>\r\n                    </tr>\r\n                    <tr>\r\n                      <th>Vault</th>\r\n                      <td>\n<span class=\"score\">10.250</span><span class=\"place pull-right\">4</span>\n</td>\r\n                    </tr>\r\n                    <tr>\r\n                      <th>PBars</th>\r\n                      <td>\n<span class=\"score\">10.250</span><span class=\"place pull-right\">4</span>\n</td>\r\n                    </tr>\r\n                    <tr>\r\n                      <th>HiBar</th>\r\n                      <td class=\"medals medals-gold\">\n<span class=\"score\">11.400</span><span class=\"place pull-right\">1</span>\n</td>\r\n                    </tr>\r\n                    <tr>\r\n                      <th>AA</th>\r\n                      <td class=\"medals medals-silver\">\n<span class=\"score\">63.600</span><span class=\"place pull-right\">2</span>\n</td>\r\n                    </tr>\r\n
    EOHTML
  end
end
