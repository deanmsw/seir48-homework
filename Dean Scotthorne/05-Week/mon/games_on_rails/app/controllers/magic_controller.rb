class MagicController < ApplicationController
def magic


#   case a = rand(1..2).to_i
#   when a == 1 then @answer == "It is certain."
#   when a == 2 then @answer == " It is decidedly so."
#
# end
end
def results

  a = rand(1..2).to_i
  if a == 1
     answer = "It is certain."
  if a == 2
     answer = " It is decidedly so."
  end

@result = answer.to_s

end
end
end
