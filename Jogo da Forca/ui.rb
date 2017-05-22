def pontos_agora(pontos_ate_agora)
	puts "Você tem #{pontos_ate_agora} pontos"
end

def avisa_errou_palavra
	puts "Que pena, errou... :("
end

def avisa_acertou_palavra
	puts "Parabéns, você acertou!"
end

def avisa_letra_econtrada (tota_encontrado)
	puts "Letra encontrada #{total_encontrado} vezes."
end	

def avisa_letra_nao_econtrada
	puts"Letra não encontrada."
end

def avisa_chute_efetuado(chute)
	puts "Você ja chutou essa palavra --> #{chute}"
end

def boas_vindas
	puts "Seja bem vindo ao jogo da forca"
	puts "OLHAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
	puts "Qual é o seu nome?"
	nome = gets.strip
	puts "\n\n\n\n\n\n"
	puts "Começaremos o jogo para você, #{nome}."
	nome
end	

def escolhe_palavra_secreta
	puts "Escolhendo a palavra secreta...."
	palavra_secreta = "programador"
	puts "A palavra secreta tem #{palavra_secreta.size} letras, boa sorte!"
	palavra_secreta
end	

def nao_quer_jogar?
	puts "Deseja jogar novamente? (S/N)"
	quero_jogar = gets.strip
	nao_quero_jogar = quero_jogar.upcase == "N" 
end	


def cabecalho_de_tentatica(chutes,erros, mascara)
	puts "\n\n\n"
	puts "A palavra secreta: #{mascara}"
	puts "Seu número de erros até agora: #{erros}"
	puts "Seus chutes até agora: #{chutes}"
end

def pede_um_chute

	puts "Entre com uma letra ou uma palavra"
	chute = gets.strip
	puts "Será que acertou? Você chutou #{chute}"
	chute

end	
