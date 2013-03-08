class KaratMachine

def initialize(start)
  @spot = 1565
  @melt_percent = [0.5, 0.6, 0.7, 0.8, 0.9, 1]
  @start = start
 
end

def prompt
  print "> "
end

def compute
  start_compute = @start
  while true
    puts "\n------"
    compute = method(start_compute)
    start_compute = compute.call()
  end
end
  



  def purity
    
    puts "Please select a purity:"
    puts "(1)10k\n(2)14k\n(3)16k\n(4)18k\n(5)20k\n(6)22k\n(7)24k"
    prompt; $karat = gets.chomp
    
    case
    when $karat == '1'
      $karat = 0.417
      $show = "10k"
      puts "10k selected..."
    when $karat == '2'
      $karat = 0.585
      $show = "14k"
      puts "14k selected..."
    when $karat == '3'
      $karat = 0.666
      $show = "16k"
      puts "16k selected..."
    when $karat == '4'
      $karat = 0.75
      $show = "18k"
      puts "18k selected..."
    when $karat == '5'
      $karat = 0.833
      $show = "20k"
      puts "20k selected..."
    when $karat == '6'
      $karat = 0.916
      $show = "22k"
      puts "22k selected..."
    when $karat == '7'
      $karat = 1
      $show = "24k"
      puts "24k selected..."
    else
      puts "\nPlease Select a valid karat"
      return :purity
    end
    return :karatCalc
  end  
  
  def weigh
    
    puts "Please enter weight in grams: "
    prompt; $weight = gets.chomp.to_f
    if $weight.abs != 0.000 
      return :purity
    else
      puts "Please enter a valid weight."
      return :weigh
    end
  end

  def karatCalc
    delta = 0.01
    puts "#{$show} quotes @ #{@spot}."
    @melt_percent.each do |percent|
      formula = @spot * percent * $karat / 31.1 * $weight
      show_perc = percent * 100
      puts "#{show_perc.round(0)}% @ #{formula.round(2)}"
    end
    puts " "
    Process.exit(0)
  end

end


calc = KaratMachine.new(:weigh)
calc.compute()
