class Calculadora
	def suma(a, b)
		a + b
	end

	def resta(a, b)
		a - b
	end

	def multiplicar(a, b)
		a * b
	end

	def dividir(a, b)
		not_zero(b)? a /b :0
	end

	def not_zero(a)
		a!=0
	end
end