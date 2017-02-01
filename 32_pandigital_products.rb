def pandigital_products
  permutations = (1..9).to_a.permutation.to_a
  products = []
  permutations.each do |permute|
    i = 0
    while i < permute.length - 1
      j = i + 1
      while j < permute.length
        multiplier = permute[0..i].join("").to_i
        multiplicand = permute[i+1...j].join("").to_i
        product = permute[j..-1].join("").to_i
        if (multiplier * multiplicand == product)
          products << product
        end
        j += 1
      end
      i += 1
    end
  end
  products.uniq.inject(:+)
end


p pandigital_products
