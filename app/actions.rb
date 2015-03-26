# Homepage (Root path)
get '/' do
  erb :index
end



#testcode
get '/test' do
  send_file 'public/index.html'
end


