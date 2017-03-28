def da_boas_vindas
	puts "Bem vindo ao jogo da adivinação\n\n\n"

	puts "Qual o seu nome: "
	nome = gets.strip

	puts "\n\nSeja bem vindo #{nome}" 

	puts "Vamos ao jogo ?"

	puts "\n\nEscolhendo um número entre 0 e 200.."

	puts "\n\nNúmero escolhido! Que tal adivihnar o nosso número secreto, #{nome}" 
	
	nome
end

def sorteia_numero_secreto (dificuldade)

	case dificuldade  
		when 1
			maximo = 30
		when 2
			maximo = 60
		when 3
			maximo = 90
		when 4
			maximo = 150
		else
			maximo = 200
	end

	puts "Escolha um número entre 0 e #{maximo-1}: " 

	numero_secreto = rand(maximo)

	return numero_secreto
end

def nivel_de_dificuldade 
	puts "Escolha um nivel de dificuldade, de 1 a 5"
	dificuldade = gets.to_i
end

def pede_um_numero(chute, tentativa, limite_de_tentativa)
	puts "tentativa  #{tentativa}  de  #{limite_de_tentativa}"

	puts "chutes até agora: #{chute}" 

	numeroEscolhido = gets.strip

	puts "\n\n"

	puts "Será que acertou? Você chutou #{numeroEscolhido} " 
	puts "\n\n\n"
	return numeroEscolhido.to_i
end	

def verifica_se_acertou(numeroEscolhido, numero_secreto)
	acertou = numeroEscolhido  == numero_secreto

	if acertou
		puts "Parabéns, você acertou o número secreto\n"
		puts "Fim de jogo"
		return true
	end

		maiorNumero = numeroEscolhido > numero_secreto
		if	maiorNumero
			puts "O número escolhido é maior que o número secreto!"
		else
			puts "O número escolhido é menor que o número secreto"
		end
	
	false
end

nome = da_boas_vindas
dificuldade = nivel_de_dificuldade
numero_secreto = sorteia_numero_secreto (dificuldade)

limite_de_tentativa = 5
chute = []
pontos_ate_agora = 1000

for tentativa in 1..limite_de_tentativa
	numeroEscolhido = pede_um_numero(chute, tentativa, limite_de_tentativa)
	chute << numeroEscolhido

	if nome == "felipe"
		puts "acertou"
		break
	end	

	pontos_a_perder = (numeroEscolhido - numero_secreto).abs/2.0
	pontos_ate_agora -= pontos_a_perder

	if verifica_se_acertou(numeroEscolhido, numero_secreto)
		break
	end	
end
puts"Seus pontos atuais são #{pontos_ate_agora}"