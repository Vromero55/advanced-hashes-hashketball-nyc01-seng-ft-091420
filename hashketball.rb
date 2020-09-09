# Write your code below game_hash
<<<<<<< HEAD
require 'pry'
=======
#require 'pry'
>>>>>>> 206ddeabb11144326a7bc1402ac6cd2694e6c988

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored(players_name)
  pointy=nil
    game_hash.each do |location, team_data|
      counter=0
      while counter < team_data[:players].length do
          if players_name==team_data[:players][counter][:player_name]
              pointy = team_data[:players][counter][:points]
          end
            counter = counter + 1
      end
    end
    pointy
end

def shoe_size(players_name)
  size=nil
    game_hash.each do |location, team_data|
      counter=0
      while counter < team_data[:players].length do
          if players_name==team_data[:players][counter][:player_name]
              size = team_data[:players][counter][:shoe]
          end
            counter = counter + 1
      end
    end
    size
end


def team_colors(teamname)
  colors=nil
    game_hash.each do |location, team_data|
      counter=0
      while counter < team_data[:players].length do
          if teamname==team_data[:team_name]
              colors = team_data[:colors]
          end
            counter = counter + 1
      end
    end
    colors
end

def team_names
  array_of_teams=[]
  array_of_teams<<game_hash[:home][:team_name]
  array_of_teams<<game_hash[:away][:team_name]
  array_of_teams
end

def player_numbers(teamname)
  team_numbers=[]
    game_hash.each do |location, team_data|
      counter=0
      while counter < team_data[:players].length do

          if teamname==team_data[:team_name]
              team_numbers << team_data[:players][counter][:number]
          end
            counter = counter + 1
      end
    end
    team_numbers
end

<<<<<<< HEAD

=======
>>>>>>> 206ddeabb11144326a7bc1402ac6cd2694e6c988
def player_stats(players_name)
  stats=nil
    game_hash.each do |location, team_data|
      counter=0
      while counter < team_data[:players].length do
          if players_name==team_data[:players][counter][:player_name]
              stats = team_data[:players][counter]
          end
            counter = counter + 1
      end
    end
    stats
end

def big_shoe_rebounds
<<<<<<< HEAD
  shoe_array=[]
  rebound=nil
  game_hash.each do |location, team_data|
    counter=0
      while counter < team_data[:players].length do
        player=nil
        player=team_data[:players][counter][:player_name]
        shoe_array << shoe_size(player)
        counter = counter + 1
      end
        counter2=0
      while counter2 < team_data[:players].length do
        if shoe_array.max == team_data[:players][counter2][:shoe]
          rebound=team_data[:players][counter2][:rebounds]
        end
        counter2 = counter2 + 1
      end
  end
  rebound
=======

big_shoe_array=[]
    game_hash.each do |location, team_data|
      counter=0

      while counter < team_data[:players].length do
          player=nil
          player=team_data[:players][counter][:player_name]

          big_shoe_array<<shoe_size(player)
binding.pry
        end
        big_shoe_array.sort

      while counter < team_data[:players].length do
          if big_shoe_array.last==team_data[:players][counter][:shoe]
              rebounds = team_data[:players][counter][:rebounds]
          end
        end
            counter = counter + 1

    end
    rebounds
>>>>>>> 206ddeabb11144326a7bc1402ac6cd2694e6c988
end
