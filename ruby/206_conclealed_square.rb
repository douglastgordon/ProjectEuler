def concealed_square
  ((Math.sqrt(1020304050607080900)).floor..(Math.sqrt(1929394959697989990)).floor).step(2).each do |digit|
    square = digit ** 2
    return digit if (square.to_s =~  /^1.2.3.4.5.6.7.8.9.0$/i)
    digit += 1
  end
end

p concealed_square
