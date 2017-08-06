def triangular_nums
  triangles = []
  (285..1_000_000).each do |n|
    triangles << ((n * (n + 1)) / 2)
  end
  triangles
end

def pentagonal_nums
  pentagons = []
  (165..1_000_000).each do |n|
    pentagons << ((n * ((3 * n) - 1)) / 2)
  end
  pentagons
end

def hexagonal_nums
  hexagons = []
  (143..1_000_000).each do |n|
    hexagons << (n * ((2 * n) - 1))
  end
  hexagons
end


def tri_pent_hex_nums
  triangles = triangular_nums
  pentagons = pentagonal_nums
  hexagons = hexagonal_nums
  triangles.each do |num|
    if pentagons.include?(num) && hexagons.include?(num) && num != 40755
      return num
    end
  end
end

p tri_pent_hex_nums
