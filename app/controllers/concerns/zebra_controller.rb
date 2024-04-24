class ZebraController < ApplicationController
  def home
    render ({ :template => "game_templates/home"})
  end

  def tds
    @num_dice = 2
    @sides = 6
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end
    render ({ :template => "game_templates/tds"})
  end

  def tdt
    @num_dice = 2
    @sides = 10
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end
    render ({ :template => "game_templates/tdt"})
  end

  def odt
    @num_dice = 1
    @sides = 20
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end
    render ({ :template => "game_templates/odt"})
  end

  def fdf
    @num_dice = 5
    @sides = 4
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end
    render ({ :template => "game_templates/fdf"})
  end

  def dyno
    @num_dice = params.fetch("number_of_dice").to_i

    @sides = params.fetch("how_many_sides").to_i
  
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end
    render ({ :template => "game_templates/dyno"})
  end
end
