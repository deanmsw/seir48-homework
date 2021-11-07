require "sinatra"
require "sinatra/reloader"
require "sqlite3"

get '/' do
   erb :home
end

get '/materials' do
  db = SQLite3::Database.new("database.sqlite3")
  db.results_as_hash = true
  @all_materials = db.execute "SELECT * FROM materials;"
  db.close
  erb :materials_index
end

get '/materials/new' do
  erb :materials_new
end

post '/materials' do
  db = SQLite3::Database.new("database.sqlite3")
  db.results_as_hash = true
  new_products = db.execute "INSERT INTO materials (product_name, description, price, quantity, image, location) VALUES ('#{params[:product_name]}', '#{params[:description]}', '#{params[:price]}', '#{params[:quantity]}', '#{params[:image]}', '#{params[:location]}')"
  redirect to('/materials')
end

get '/materials/:id' do
  db = SQLite3::Database.new("database.sqlite3")
  db.results_as_hash = true
  products = db.execute "SELECT * FROM materials WHERE id=#{params[:id]};"
  @product = products.first
  db.close
  erb :materials_show
end

get '/materials/:id/edit' do
  db = SQLite3::Database.new("database.sqlite3")
  db.results_as_hash = true
  @edit_product = db.execute("SELECT * FROM materials WHERE id ==#{params[:id]};").first
  db.close
  erb :materials_edit
end


post '/materials/:id' do
  db = SQLite3::Database.new("database.sqlite3")
  db.results_as_hash = true
  new_products = db.execute "UPDATE materials SET product_name = '#{params[:product_name]}', description = '#{params[:description]}', price = '#{params[:price]}', quantity = '#{params[:quantity]}', image = '#{params[:image]}', location = '#{params[:location]}' WHERE id = #{params[:id]}";
  new_products
  db.close
  redirect to("/materials/#{params[:id]}")
end

get '/materials/:id/delete' do
  db = SQLite3::Database.new("database.sqlite3")
  db.results_as_hash = true
  db.execute("DELETE FROM materials WHERE id ==#{params[:id]};")
  db.close
 redirect to('/materials')
end
