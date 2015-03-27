# Homepage (Root path)
get '/' do
  erb :index
end

get '/hunt' do
  erb :hunt
end

get '/hunts' do
  erb :hunts
end


#testcode
get '/test' do
  send_file 'public/index.html'
end


