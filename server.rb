require 'sinatra'
require 'httparty'
require 'nokogiri'

get '/' do
	job = params["job"]
	url = "https://miami.craigslist.org/search/#{job}?s=0"
	response = HTTParty.get url

	dom = Nokogiri::HTML(response.body)

	job_titles =

	dom.css('.hdrlnk').map do |obj|
		obj.content
	end

	p job_titles
end