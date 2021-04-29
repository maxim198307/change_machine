module ChangeMachine
  def self.calculate_change(input)
    coins = { 200 => 0, 100 => 0, 25 => 0, 10 => 0, 5 => 0, 1 => 0 }

    coins.keys.each_with_object(coins) do |denomination, memo|
      if input >= denomination
        mod = input / denomination
        memo[denomination] = mod
        input = input % denomination
      end
    end
  end
end
