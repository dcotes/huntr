# Homepage (Root path)
get '/' do
  erb :index
end

get '/hunt' do
  erb :single
end


#testcode
get '/test' do
  send_file 'public/index.html'
end


