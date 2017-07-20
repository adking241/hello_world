# require "sinatra"

# get '/'  do
# 	redirect '/user_name'
# end

# get '/user_name' do
# 	erb :index
# end

# post '/user_name' do
# 	name_provided = params[:name_provided]
#     redirect '/age?name_provided=' + name_provided
# end

# get '/age' do
# 	name_provided = params[:name_provided]
# 	# puts "name_provided in get age #{name_provided}"
# 	erb :age, :locals => {:name_provided => name_provided}
# end

# post '/age' do
# 	age_provided = params[:age_provided]
# 	name_provided = params[:name_provided]
# 	# puts "name_provided in get age #{name_provided} and age_provided is #{age_provided}"
# 	redirect '/fave_nums?age_provided=' + age_provided + '&name_provided=' + name_provided

# end

# get '/fave_nums' do
# 	age_provided = params[:age_provided]
# 	name_provided = params[:name_provided]
# 	puts "age_provided in get fav nums #{age_provided}"
# 	puts "name_provided in get fav nums #{name_provided}"
# 	erb :fave_nums, :locals => {:age_provided => age_provided, :name_provided => name_provided}
# end

# post '/fave_nums' do
# 	age_provided = params[:age_provided]
# 	name_provided = params[:name_provided]
#   	nums_provided = params[:input_nums]
#  #  	puts "age_provided in get nums #{age_provided}"
# 	# puts "name_provided in get age #{name_provided}"
# 	# puts "nums_provided in get age #{nums_provided}"

# end

# # 404 Error!
# not_found do
#   status 404
#   erb :oops
# end

require "sinatra"

get '/' do
	redirect '/user_name'
end

get '/user_name' do
	erb :index
end

post '/user_name' do
	name_provided = params[:input_name]
	redirect '/age?name_provided=' + name_provided
end

get '/age' do
	name_provided = params[:name_provided]
	erb :age, :locals => {:name_provided => name_provided}
end

post '/age' do
	age_provided = params[:age]
	puts "params[:age] is #{params[:age]}"
	name_provided = params[:name_provided]
	puts "age_provided in user_age is #{age_provided} and name_provided is #{name_provided}"
	redirect '/favnums?name_provided=' + name_provided + '&age_provided=' + age_provided 
end

get '/favnums' do
	name_provided = params[:name_provided]
	age_provided = params[:age_provided]
	erb :favnums, :locals => {:name_provided => name_provided, :age_provided => age_provided}
end

post '/user_number' do
	number_provided = params[:input_number]
	redirect '/tada?number_provided=' + number_provided
end

get '/tada' do
	number_provided = params[:number_provided]
	erb :tada, :locals => {:number_provided => number_provided}
end

## 404 Error!
not_found do
  status 404
  erb :oops
end












































# require "sinatra"

# get '/' do 
# 	redirect '/user_name'
# end

# get '/user_name' do
# 	erb :index
# end

# post '/user_name' do
#  	name_provided = params[:input_age]
#   	redirect '/age?name_provided=' + name_provided
# end

# get '/age' do
# 	name_provided = params[:input_name]
# 	puts "name_provided in get age #{name_provided}"
# 	erb :age, :locals => {:name_provided =>name_provided}
# end

# post '/age' do 
# 	age_provided = params[:input_age]
# 	redirect '/fave_nums?user_age' + user_age
# end