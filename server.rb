require 'sinatra'
require 'httparty'
require 'nokogiri'

get '/' do
	url = "https://miami.craigslist.org/search/sof"
	response = HTTParty.get url

	dom = Nokogiri::HTML(response.body)

	job_titles =

	dom.css('.hdrlnk').map do |obj|
		obj.content
	end

	p job_titles
end