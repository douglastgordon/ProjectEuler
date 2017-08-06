def is_palindrome?(num)
  num = num.to_s
  num == num.reverse
end

def largest_palindrome_product
  products = three_digit_products
  products.each do |product|
    return product if is_palindrome?(product)
  end
end

def three_digit_products
  products = []
  (100..999).each do |x|
    (100..999).each do |y|
      products << x * y
    end
  end
  products.uniq.sort.reverse
end

p largest_palindrome_product
