# ==========================================
# Autor: André Vinicius Gonçalves
# Projeto: Criando uma Calculadora 
# Curso: Formação Ruby Developer (DIO)
# ==========================================

resultado  = ''

loop do z
 # Limpa a tela para o menu aparecer sempre no topo    
    system "cls" 

 # --- CABEÇALHO E MENU ---
     puts "========================================"
     puts "       CALCULADORA RUBY v1.0"
     puts "========================================"
     puts resultado
     puts 'Selecione uma opção: '
     puts '1 - Para uma SOMA'
     puts '2 - Para uma SUBTRAÇÃO'
     puts '3 - Para uma MULTIPLICAÇÃO'
     puts '4 - Para uma DIVISÃO'
     puts '5 - Para Sair'
     print 'Digite a sua Opção: '

     opcao = gets.chomp.to_i

 # --- INÍCIO DA LÓGICA IF / ELSIF ---

    if opcao == 1 
        # SOMA
        puts "\n--- REALIZANDO UMA SOMA ---"
        print 'Digite o primeiro número: ' 
        valor_1 = gets.chomp.to_f
        print 'Digite o segundo número: '
        valor_2 = gets.chomp.to_f
        soma = valor_1 + valor_2
        resultado = "O resultado da última operação foi: #{soma}"

    elsif opcao == 2 
        # SUBTRAÇÃO
        puts "\n--- REALIZANDO UMA SUBTRAÇÃO ---"
        print 'Digite o primeiro número: ' 
        valor_1 = gets.chomp.to_f
        print 'Digite o segundo número: '
        valor_2 = gets.chomp.to_f
        subtracao = valor_1 - valor_2
        resultado = "SUBTRAÇÃO REALIZADA: #{valor_1} - #{valor_2} = #{subtracao}"   
    elsif opcao == 3 
        # MULTIPLICAÇÃO
        puts "\n--- REALIZANDO UMA MULTIPLICAÇÃO ---"
        print 'Digite o primeiro número: ' 
        valor_1 = gets.chomp.to_f
        print 'Digite o segundo número: '
        valor_2 = gets.chomp.to_f
        multiplicacao = valor_1 * valor_2
        resultado = "MULTIPLICAÇÃO REALIZADA: #{valor_1} * #{valor_2} = #{multiplicacao}"

    elsif opcao == 4 
        # DIVISÃO (Com proteção contra zero)
        puts "\n--- REALIZANDO UMA DIVISÃO ---"
        print 'Digite o primeiro número: ' 
        valor_1 = gets.chomp.to_f
        print 'Digite o segundo número: '
        valor_2 = gets.chomp.to_f
            if valor_2 == 0
                resultado = "Erro: Não é possível dividir por zero"
                else
                divisao = valor_1 / valor_2
                resultado = "DIVISÃO REALIZADA: #{valor_1} / #{valor_2} = #{divisao}"
                end        
    
    elsif opcao == 5 
        # SAÍDA
        system 'cls'
        puts "Saindo... Obrigado por usar a Calculadora Ruby!"
        break if opcao == 5

    else 
        # OPÇÃO INVÁLIDA (Qualquer outro número ou letra)
       resultado = "Opção Inválida! Tente novamente."

    end


# --- PAUSA PARA LEITURA ---
  # Isso impede que a tela limpe muito rápido após mostrar um erro ou resultado
  puts ""
  puts "Pressione ENTER para continuar..."
  gets
end




       
    

