def sumForDirection(moveArr, direction)
  moveArr.filter { |m| m[0] == direction}
         .map { |m| m[1].to_i }
         .sum
end

moves = File.readlines('./day02-input').map { |m| m.split(' ') }

horizontal = sumForDirection(moves, "forward")
vertical = sumForDirection(moves, "down") - sumForDirection(moves, "up")

# Part 1
puts (horizontal * vertical)

# Part 2
aim = 0
depth = 0
horizontal = 0
moves.each do |move|
  amount = move[1].to_i
  if move[0] == "forward"
    horizontal += amount
    depth += (aim * amount)
  elsif move[0] == "down"
    aim += amount
  elsif move[0] == "up"
    aim -= amount
  end
end

puts (horizontal * depth)


