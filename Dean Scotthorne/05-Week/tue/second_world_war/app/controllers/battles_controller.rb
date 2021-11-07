class BattlesController < ApplicationController

def index
  @battles = Battle.all
end

def show
  @battle = Battle.find params[:id]
end

def new
end

def edit
  @battle = Battle.find params[:id]
end

def update
  battle = Battle.find params[:id]
  battle.name = params[:name]
  battle.location = params[:location]
  battle.axis_general = params[:axis_general]
  battle.axis_gen_image = params[:axis_gen_image]
  battle.allied_general = params[:allied_general]
  battle.allied_gen_image = params[:allied_gen_image]
  battle.axis_casualties = params[:axis_casualties]
  battle.allied_casualties = params[:allied_casualties]
  battle.result = params[:result]
  battle.start_date = params[:start_date]
  battle.end_date = params[:end_date]
  battle.description = params[:description]
  battle.image = params[:image]
  battle.save
  redirect_to battle_path(battle.id)
end

def create
  battle = Battle.create params[:id]
  battle.name = params[:name]
  battle.location = params[:location]
  battle.axis_general = params[:axis_general]
  battle.axis_gen_image = params[:axis_gen_image]
  battle.allied_general = params[:allied_general]
  battle.allied_gen_image = params[:allied_gen_image]
  battle.axis_casualties = params[:axis_casualties]
  battle.allied_casualties = params[:allied_casualties]
  battle.result = params[:result]
  battle.start_date = params[:start_date]
  battle.end_date = params[:end_date]
  battle.description = params[:description]
  battle.image = params[:image]
  battle.save
  redirect_to battle_path(battle.id)
end

def delete
  battle = Battle.find params[:id]
  battle.destroy
  redirect_to battles_path
end


end
