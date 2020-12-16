defmodule 140316 do

  @type color() :: heart | spades | clover | diamond
  @type value() :: integer
  @type card() :: {color(), value()}
  @type deck() :: :nil | [card()]

end
