lib = File.expand_path('../../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'flickraw'

def flickr; $flickraw ||= FlickRaw::Flickr.new ENV['FLICKRAW_API_KEY'], ENV['FLICKRAW_SHARED_SECRET'] end
#FlickRaw.secure = false

flickr.access_token = ENV['FLICKRAW_ACCESS_TOKEN']
flickr.access_secret = ENV['FLICKRAW_ACCESS_SECRET']
