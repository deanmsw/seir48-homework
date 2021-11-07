require "sinatra"
require "sinatra/reloader"
require "active_record"
require "sqlite3"

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'database.sqlite3'
)

#Optional bonus:
ActiveRecord::Base.logger = Logger.new(STDERR)

#Model: class backed by a database table
class Battle < ActiveRecord::Base
end

class Leader < ActiveRecord::Base
end

get '/home' do
  erb :home
end

#Battles Index
get '/battles' do
  @battles = Battle.all
  erb :battles_index
end

#NEW
get '/battles/new' do
  erb :battles_new
end

post '/battles' do
  battle = Battle.new params[:id]
  battle.name = params[:name]
  battle.theatre = params[:theatre]
  battle.location = params[:location]
  battle.result = params[:result]
  battle.start_date = params[:start_date]
  battle.end_date = params[:end_date]
  battle.description = params[:description]
  battle.image = params[:image]

  battle.save

  redirect to("/battles/#{battle.id}")
end

#Battles Show
get '/battles/:id' do
  @battles = Battle.find params[:id]
  erb :battles_show
end

#Battles EDIT
get '/battles/:id/edit' do
  @battles = Battle.find params[:id]
  erb :battles_edit
end

#Battles UPDATE
post '/battles/:id' do
  battle = Battle.find params[:id]
  battle.name = params[:name]
  battle.theatre = params[:theatre]
  battle.location = params[:location]
  battle.result = params[:result]
  battle.start_date = params[:start_date]
  battle.end_date = params[:end_date]
  battle.description = params[:description]
  battle.image = params[:image]

  battle.save

  redirect to("/battles/#{params[:id]}")
end

get '/battles/:id/delete' do
  battle = Battle.find params[:id]
  battle.destroy
  redirect to("/battles")
end



###############################################################

#Leaders Index
get '/leaders' do
  @leaders = Leader.all
  erb :leaders_index
end

#NEW
get '/leaders/new' do
  erb :leaders_new
end

post '/leaders' do
  leader = Leader.new params[:id]
  leader.first_name = params[:first_name]
  leader.title = params[:title]
  leader.surname = params[:surname]
  leader.country = params[:country]
  leader.aka = params[:aka]
  leader.description = params[:description]
  leader.image = params[:image]

  leader.save

  redirect to("/leaders/#{leader.id}")
end

#Leaders Show
get '/leaders/:id' do
  @leaders = Leader.find params[:id]
  erb :leaders_show
end

#Leaders Edit
get '/leaders/:id/edit' do
  @leaders = Leader.find params[:id]
  erb :leaders_edit
end

#LEADERS UPDATE
post '/leaders/:id' do
  leader = Leader.find params[:id]
  leader.first_name = params[:first_name]
  leader.title = params[:title]
  leader.surname = params[:surname]
  leader.country = params[:country]
  leader.aka = params[:aka]
  leader.description = params[:description]
  leader.image = params[:image]

  leader.save

  redirect to("/leaders/#{params[:id]}")
end

get '/leaders/:id/delete' do
  leader = Leader.find params[:id]
  leader.destroy
  redirect to("/leaders")
end
