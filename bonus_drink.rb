class BonusDrink
  def self.total_count_for(amount)
    if amount < 3
      return amount
    else
      return amount + (amount - 1) / 2
    end
  end
end

amount = gets.to_i
answer = BonusDrink::total_count_for(amount)

puts "if you purchase #{amount} bottles, you can drink a total of #{answer}."