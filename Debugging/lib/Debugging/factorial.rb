def factorial(n)
    product = 1
    while n > 0
        binding.irb
        n -= 1
        product *= n
    end
    product
end

puts factorial(5)