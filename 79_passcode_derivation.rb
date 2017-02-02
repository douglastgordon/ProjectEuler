def parse_codes

  # codes contain no codes with repeating values
  codes = [319, 680, 180, 690, 129, 620, 762, 689, 762, 318, 368, 710, 720, 710, 629, 168, 160, 689, 716, 731, 736, 729, 316, 729, 729, 710, 769, 290, 719, 680, 318, 389, 162, 289, 162, 718, 729, 319, 790, 680, 890, 362, 319, 760, 316, 729, 380, 319, 728, 716]
  before_hash = Hash.new {|h,k| h[k] = [] }
  after_hash = Hash.new {|h,k| h[k] = [] }
  codes.each do |code|
    code = code.to_s.split("").map(&:to_i)
    first = code.first
    second = code[1]
    third = code.last
    after_hash[first] << second
    after_hash[first] << third
    after_hash[second] << third
    before_hash[second] << first
    before_hash[third] << first
    before_hash[third] << second
  end
  before_hash.each do |k, v|
    before_hash[k] = v.uniq.sort
  end
  after_hash.each do |k, v|
    after_hash[k] = v.uniq.sort
  end
  p before_hash
  p after_hash
end


parse_codes


# answered easily worked about by hand 73162890
