def convierte_a_asterisco(string)
	new_string = string.dup
	# yield
	for i in 0..new_string.length - 1
		unless i == 0 || i == new_string.length - 1
			new_string[i] = "*"
		end
	end
	new_string
end

name = "Pedro"
# puts "Este es el valor de name: #{name}"
# puts convierte_a_asterisco(name)
# puts "Este es el valor de name, despues: #{name}"



# convierte_a_asterisco(name) { puts "Inside block!" }


def codea_benchmark
	start = Time.now
	yield
	bench = Time.now - start
end



puts codea_benchmark { convierte_a_asterisco(name) }