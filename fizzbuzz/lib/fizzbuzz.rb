def fizzbuzz(n)
	x = ''
	x+= 'Fizz' if n % 3 == 0
	x+= 'Buzz' if n % 5 == 0
	(x.empty? ? n : x)
end
