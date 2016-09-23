require 'sinatra'

post '/feedback' do
	@fname = params[:firstname]
	@lname = params[:lastname]
	@class_love = params[:class_love]
	@feedback = params[:feedback]
	@happy = (@class_love == "More than I care to say") ? "Thats Great!" : "Well, hopefully youll
							 REALLY love it by the end"
	@page="<!doctype html>
	
	<html>
		<head>
		</head>
		<body>
			<h1>Welcome #{@fname}!</h1>
			<h3>#{@happy}</h3>
		</body>
	</html>"
end
