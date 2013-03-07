  SPOT = 1575
  MELT_PERCENT = [0.5, 0.6, 0.7, 0.8, 0.9, 1]

def prompt
  puts "> "
end
  
def tenK(purity, grams)
  puts "Ten Karat quotes @ #{SPOT}."
  MELT_PERCENT.each do |percent|
    formula = SPOT * percent * purity / 31.1 * grams
    show_perc = percent * 100
    puts "#{show_perc.round(0)}% @ #{formula.round(2)}"  end
  puts " "
end

def fourteenK(grams)
  purity = 0.585
  puts "Fourteen Karat quotes @ #{SPOT}."
  MELT_PERCENT.each do |percent|
    formula = SPOT * percent * purity / 31.1 * grams
    show_perc = percent * 100
    puts "#{show_perc.round(0)}% @ #{formula.round(2)}"  end
  puts " "
end

def input
  puts "Please select a purity:"
  puts "(1)10k\n (2)14k\n (3)16k\n (4)18k\n (5)20k\n (6)22k\n (7)24k"
  prompt; karat = gets.chomp
  
  case
  when karat == '1'
    karat = 0.417
    puts "10k selected..."
  when karat == '2'
    karat = 0.585
  when karat == '3'
    karat = 0.666
  when karat == '4'
    karat = 0.75
  when karat == '5'
    karat = 0.833
  when karat == '6'
    karat = 0.916
  when karat == '7'
    karat = 1
  else
    put "Please Select a valid karat"
    input()
  end
  
  
  puts "Please enter weight in grams: "
  prompt; weight = gets.chomp.to_i

end

input()
