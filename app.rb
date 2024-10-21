require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get ("/rock") do
  moves = ["rock","paper","scissors"]
  comp_move = moves.sample
  if comp_move == "rock"
    outcome = "tied"
  elsif comp_move == "paper"
    outcome = "lost"
  else comp_move == "scissors"
    outcome = "won"
  end

  "
  <h2>
    We played rock!
  </h2>
  <h2>
    They played #{comp_move}!
  </h2>
  <h2>
    We #{outcome}!
  </h2>
  "
end
get ("/paper") do
  moves = ["rock","paper","scissors"]
  comp_move = moves.sample
  if comp_move == "rock"
    outcome = "won"
  elsif comp_move == "paper"
    outcome = "tied"
  else comp_move == "scissors"
    outcome = "lost"
  end

  "
  <h2>
    We played paper!
  </h2>
  <h2>
    They played #{comp_move}!
  </h2>
  <h2>
    We #{outcome}!
  </h2>
  "
end
get ("/scissors") do
  moves = ["rock","paper","scissors"]
  comp_move = moves.sample
  if comp_move == "rock"
    outcome = "lost"
  elsif comp_move == "paper"
    outcome = "won"
  else comp_move == "scissors"
    outcome = "tied"
  end

  "
  <h2>
    We played scissors!
  </h2>
  <h2>
    They played #{comp_move}!
  </h2>
  <h2>
    We #{outcome}!
  </h2>
  "
end
