def make_change(cents)
  return {} if cents == 0
  quarters, cents = cents.divmod(25)
  dimes, cents = cents.divmod(10)
  nickels, pennies = cents.divmod(5)
  coin_hash = {}
  coin_hash[:pennies] = pennies if pennies > 0
  coin_hash[:nickels] = nickels if nickels > 0
  coin_hash[:dimes] = dimes if dimes > 0
  coin_hash[:quarters] = quarters if quarters > 0
  coin_hash
end

def assert(argument)
  raise "Test Failed" unless argument
end

assert(make_change(0) == {})
assert(make_change(1) == {:pennies => 1})
assert(make_change(5) == {:nickels => 1})
assert(make_change(6) == {:nickels => 1, :pennies => 1})
assert(make_change(9) == {:nickels => 1, :pennies => 4})
assert(make_change(10) == {:dimes => 1})
assert(make_change(25) == {:quarters => 1})
assert(make_change(38) == {:quarters => 1, :dimes => 1, :pennies => 3})

