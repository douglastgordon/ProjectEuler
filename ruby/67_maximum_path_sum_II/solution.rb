def make_triangle
  triangle = []
  input = File.read('input.txt')
  input.split("\n").each do |line|
    triangle << line.split(" ").map{|el| el.to_i}
  end
  triangle.reverse
end

def find_path
  triangle = make_triangle
  until triangle.length == 1
    triangle[1].each_with_index do |el, idx|
      if triangle.first[idx] > triangle.first[idx + 1]
        triangle[1][idx] = el + triangle.first[idx]
      else
        triangle[1][idx] = el + triangle.first[idx + 1]
      end
    end
    triangle = triangle.drop(1)
  end
  triangle.first.first
end

p find_path
