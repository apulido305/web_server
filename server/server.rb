# require 'sinatra'
# require 'nokogiri'
#
#   get '/' do
#     require 'httparty'
#     require 'nokogiri'
#     url = "https://miami.craigslist.org/d/software-qa-dba-etc/search/sof"
#     response = HTTParty.get url
#
#     html = response.body
#     dom = Nokogiri::HTML(html)
#     jobs = dom.css("a.hdrlnk")
#     puts jobs.content
#
# #   end
# require 'sinatra'
# require 'nokogiri'
#
# # get '/' do
#   html :index
# end

#
#   <form action="http://requestb.in/xc8xxbxc" method="post">
#  <label>Why did you enroll?</label>
#  <input type="text" name="reason_for_wyncode" />
#  <input type="submit" value="Send!" />
# </form>
# def html
#
# end
# def parser
  require 'sinatra'
  require 'httparty'
  require 'nokogiri'

  get '/:job' do
    job_code = params["job"]
    response = HTTParty.get "https://miami.craigslist.org/search/" + job_code
    html = response.body
    dom = Nokogiri::HTML(html)
    jobs = dom.css("a.hdrlnk")
    job_listing = jobs.map.with_index do |job, i|
      "#{(i += 1)}. #{job.to_html} <br>"
    end
  end






# end
# require ‘sinatra’
# require “httparty”
# require ‘nokogiri’
#
# get ‘/’ do
#   jobs = params[“job”]
#   url = “https://miami.craigslist.org/search/” + (jobs || “sof”) # pipe through “sof”
#   response = HTTParty.get url #requesting the url and storing it in a variable
#   dom = Nokogiri::HTML(response.body) # parsing the response to just get the body
#   job_titles = dom.css(‘a.hdrlnk’) #storing the information we want in job_titles.
#
# i = 0 # varible for increment
#
# html = “#{jobs}” # html is equal to :jobs through interpolation
#
#   job_titles.map do |element| # go through each order in the array and stoe the values in a new array (.map).
#     element.content + # get the content of job_titles
#     html += “#{(i += 1)} <a href=#{element[‘href’]}>#{element.content}</a> <br/>” # html (:jobs) increment by 1 get all elements that have an < a href attribute. put that information with the content that we found in job_titles via interpolation and also break after each time it loops
#   end
#   return html # specifies that we want only the jobs back.
# end
