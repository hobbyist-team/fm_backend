require 'sinatra'
require 'sinatra/contrib'
require 'sinatra/reloader'

get '/' do
	json hello: 'world'
end


get '/health_check' do
	json status: 200
end

get '/streams' do
	json(
		id: '1',
		title: 'A',
		titleDesc: 'Kantipur FM 96.1(24/7)',
		isMms: '0',
		isMp3: '1',
		url: 'http://broadcast.radiokantipur.com:7248/',
		suburl: '7248',
		desc: 'रेडियो रास्ट्रको ',
		imageurl: 'logo.png',
		ip: '67.23.237.151',
		ad1: 'http://deepakdhakal.com/nepalinews.png',
		ad2: 'http://sajhavideo.com/nepalifmvideo/n.html',
		adurl: 'http://deepakdhakal.com/nm.png',
		helpText: 'https://itunes.apple.com/us/app/nepali-music/id463395900?mt=8'
	)
end
