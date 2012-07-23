# coding: utf-8
require 'nokogiri'
require 'open-uri'
require 'iconv'
module ZhihusHelper
    # extract the title and answer in the body of the url.
	def extract(url)
        puts url

        # extract title

        # extract desc
        # extract tags
        # extract answer
        doc = Nokogiri::HTML(open(url))
        puts Iconv.iconv("UTF-8", doc.to_s.encoding.to_s, doc) 
        #puts doc
        # 获取页面上所有的链接
        doc.css('a').each do |link|
          puts "#{link.content}, #{link['href']}"
        end

        # 打出 meta-keywords
        # puts doc.css("meta[name='keywords']")[0].content
    end
end
